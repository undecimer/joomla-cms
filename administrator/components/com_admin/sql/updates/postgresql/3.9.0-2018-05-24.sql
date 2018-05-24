INSERT INTO "#__extensions" ("extension_id", "package_id", "name", "type", "element", "folder", "client_id", "enabled", "access", "protected", "manifest_cache", "params", "custom_data", "system_data", "checked_out", "checked_out_time", "ordering", "state") VALUES
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '', '', '', '', 0, '1970-01-01 00:00:00', 0, 0);

--
-- Table structure for table `#__privacy_consent`
--

CREATE TABLE "#__privacy_consent" (
  "id" serial NOT NULL,
  "user_id" bigint DEFAULT 0 NOT NULL,
  "created" timestamp without time zone DEFAULT '1970-01-01 00:00:00' NOT NULL,
  "subjext" varchar(255) DEFAULT '' NOT NULL,
  "body" text NOT NULL,
  PRIMARY KEY ("id")
);
CREATE INDEX "#__privacy_consent_idx_user_id" ON "#__privacy_consent" ("user_id");
