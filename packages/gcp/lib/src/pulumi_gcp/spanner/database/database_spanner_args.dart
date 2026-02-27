// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_encryption_config/database_encryption_config.dart';

/// The set of arguments for Database.
class DatabaseSpannerArgs {
  /// The dialect of the Cloud Spanner Database.
  /// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
  /// Possible values are: `GOOGLE_STANDARD_SQL`, `POSTGRESQL`.
  final pulumi.Input<String>? databaseDialect;
  final pulumi.Input<List<String>>? ddls;

  /// The default time zone for the database. The default time zone must be a valid name
  /// from the tz database. Default value is "America/Los_angeles".
  final pulumi.Input<String>? defaultTimeZone;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  final pulumi.Input<bool>? enableDropProtection;

  /// Encryption configuration for the database
  /// Structure is documented below.
  final pulumi.Input<DatabaseEncryptionConfig>? encryptionConfig;

  /// The instance to create the database on.
  final pulumi.Input<String> instance;

  /// A unique identifier for the database, which cannot be changed after the
  /// instance is created. Values are of the form `[a-z][-_a-z0-9]*[a-z0-9]`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The retention period for the database. The retention period must be between 1 hour
  /// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
  /// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
  /// If this property is used, you must avoid adding new DDL statements to `ddl` that
  /// update the database's version_retention_period.
  final pulumi.Input<String>? versionRetentionPeriod;

  DatabaseSpannerArgs({
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
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
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

  factory DatabaseSpannerArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseSpannerArgs(
      databaseDialect:
          pulumi.Input.asOptionalInput<String>(map['databaseDialect']),
      ddls: pulumi.Input.asOptionalInput<List<String>>(map['ddls']),
      defaultTimeZone:
          pulumi.Input.asOptionalInput<String>(map['defaultTimeZone']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      enableDropProtection:
          pulumi.Input.asOptionalInput<bool>(map['enableDropProtection']),
      encryptionConfig: pulumi.Input.asOptionalInput<DatabaseEncryptionConfig>(
          map['encryptionConfig']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionRetentionPeriod:
          pulumi.Input.asOptionalInput<String>(map['versionRetentionPeriod']),
    );
  }
}
