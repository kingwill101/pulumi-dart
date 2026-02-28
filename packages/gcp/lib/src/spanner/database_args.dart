// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_encryption_config.dart';

/// {@template pulumi_spanner_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_spanner_database_database_args_doc}
class DatabaseArgs {
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

  /// Creates a new [DatabaseArgs].
  /// [databaseDialect] The dialect of the Cloud Spanner Database.
  /// [ddls] Optional.
  /// [defaultTimeZone] The default time zone for the database. The default time zone must be a valid name
  /// [deletionProtection] Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// [enableDropProtection] Optional.
  /// [encryptionConfig] Encryption configuration for the database
  /// [instance] The instance to create the database on.
  /// [name] A unique identifier for the database, which cannot be changed after the
  /// [project] The ID of the project in which the resource belongs.
  /// [versionRetentionPeriod] The retention period for the database. The retention period must be between 1 hour
  DatabaseArgs({
    String? databaseDialect,
    List<String>? ddls,
    String? defaultTimeZone,
    bool? deletionProtection,
    bool? enableDropProtection,
    DatabaseEncryptionConfig? encryptionConfig,
    required String instance,
    String? name,
    String? project,
    String? versionRetentionPeriod,
  }) :
      databaseDialect = pulumi.Input.asOptionalInput<String>(databaseDialect),
      ddls = pulumi.Input.asOptionalInput<List<String>>(ddls),
      defaultTimeZone = pulumi.Input.asOptionalInput<String>(defaultTimeZone),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enableDropProtection = pulumi.Input.asOptionalInput<bool>(enableDropProtection),
      encryptionConfig = pulumi.Input.asOptionalInput<DatabaseEncryptionConfig>(encryptionConfig),
      instance = pulumi.Input.asInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionRetentionPeriod = pulumi.Input.asOptionalInput<String>(versionRetentionPeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDialect': ?databaseDialect,
      'ddls': ?ddls,
      'defaultTimeZone': ?defaultTimeZone,
      'deletionProtection': ?deletionProtection,
      'enableDropProtection': ?enableDropProtection,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'instance': instance,
      'name': ?name,
      'project': ?project,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      databaseDialect: map['databaseDialect'] == null ? null : map['databaseDialect'] as String,
      ddls: map['ddls'] == null ? null : (map['ddls'] as List).cast<String>(),
      defaultTimeZone: map['defaultTimeZone'] == null ? null : map['defaultTimeZone'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      enableDropProtection: map['enableDropProtection'] == null ? null : map['enableDropProtection'] as bool,
      encryptionConfig: map['encryptionConfig'] == null ? null : DatabaseEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      instance: map['instance'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionRetentionPeriod: map['versionRetentionPeriod'] == null ? null : map['versionRetentionPeriod'] as String,
    );
  }
}

