// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../database_encryption_config/database_encryption_config.dart';

/// The set of arguments for Database.
class DatabaseArgs3 {
  /// The dialect of the Cloud Spanner Database.
  /// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
  /// Possible values are: `GOOGLE_STANDARD_SQL`, `POSTGRESQL`.
  final Input<String>? databaseDialect;
  final Input<List<String>>? ddls;

  /// The default time zone for the database. The default time zone must be a valid name
  /// from the tz database. Default value is "America/Los_angeles".
  final Input<String>? defaultTimeZone;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` that would delete the instance will fail.
  final Input<bool>? deletionProtection;
  final Input<bool>? enableDropProtection;

  /// Encryption configuration for the database
  /// Structure is documented below.
  final Input<DatabaseEncryptionConfig>? encryptionConfig;

  /// The instance to create the database on.
  final Input<String> instance;

  /// A unique identifier for the database, which cannot be changed after the
  /// instance is created. Values are of the form `[a-z][-_a-z0-9]*[a-z0-9]`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The retention period for the database. The retention period must be between 1 hour
  /// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
  /// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
  /// If this property is used, you must avoid adding new DDL statements to `ddl` that
  /// update the database's version_retention_period.
  final Input<String>? versionRetentionPeriod;

  DatabaseArgs3({
    this.databaseDialect,
    this.ddls,
    this.defaultTimeZone,
    this.deletionProtection,
    this.enableDropProtection,
    this.encryptionConfig,
    required this.instance,
    this.name,
    this.project,
    this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseDialectValue = databaseDialect;
    if (databaseDialectValue != null) {
      map['databaseDialect'] = databaseDialectValue;
    }
    final ddlsValue = ddls;
    if (ddlsValue != null) {
      map['ddls'] = ddlsValue;
    }
    final defaultTimeZoneValue = defaultTimeZone;
    if (defaultTimeZoneValue != null) {
      map['defaultTimeZone'] = defaultTimeZoneValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final enableDropProtectionValue = enableDropProtection;
    if (enableDropProtectionValue != null) {
      map['enableDropProtection'] = enableDropProtectionValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              DatabaseEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    map['instance'] = instance;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionRetentionPeriodValue = versionRetentionPeriod;
    if (versionRetentionPeriodValue != null) {
      map['versionRetentionPeriod'] = versionRetentionPeriodValue;
    }
    return map;
  }

  factory DatabaseArgs3.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs3(
      databaseDialect: Input.asOptionalInput<String>(map['databaseDialect']),
      ddls: Input.asOptionalInput<List<String>>(map['ddls']),
      defaultTimeZone: Input.asOptionalInput<String>(map['defaultTimeZone']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      enableDropProtection:
          Input.asOptionalInput<bool>(map['enableDropProtection']),
      encryptionConfig: Input.asOptionalInput<DatabaseEncryptionConfig>(
          map['encryptionConfig']),
      instance: Input.asInput<String>(map['instance']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      versionRetentionPeriod:
          Input.asOptionalInput<String>(map['versionRetentionPeriod']),
    );
  }
}
