// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_lightsail_database_database_args_doc}
class DatabaseArgs {
  /// Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  final pulumi.Input<bool>? applyImmediately;
  /// Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  final pulumi.Input<String>? availabilityZone;
  /// Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  final pulumi.Input<bool>? backupRetentionEnabled;
  /// Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  final pulumi.Input<String> blueprintId;
  /// Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  final pulumi.Input<String> bundleId;
  /// Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  final pulumi.Input<String>? finalSnapshotName;
  /// Name of the master database created when the Lightsail database resource is created.
  final pulumi.Input<String> masterDatabaseName;
  /// Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  final pulumi.Input<String> masterPassword;
  /// Master user name for your database.
  final pulumi.Input<String> masterUsername;
  /// Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  final pulumi.Input<String>? preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> relationalDatabaseName;
  /// Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  final pulumi.Input<bool>? skipFinalSnapshot;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DatabaseArgs].
  /// [applyImmediately] Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  /// [availabilityZone] Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  /// [backupRetentionEnabled] Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  /// [blueprintId] Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  /// [bundleId] Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  /// [finalSnapshotName] Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  /// [masterDatabaseName] Name of the master database created when the Lightsail database resource is created.
  /// [masterPassword] Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  /// [masterUsername] Master user name for your database.
  /// [preferredBackupWindow] Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  /// [publiclyAccessible] Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationalDatabaseName] Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  /// [skipFinalSnapshot] Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DatabaseArgs({
    this.applyImmediately,
    this.availabilityZone,
    this.backupRetentionEnabled,
    required this.blueprintId,
    required this.bundleId,
    this.finalSnapshotName,
    required this.masterDatabaseName,
    required this.masterPassword,
    required this.masterUsername,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    required this.relationalDatabaseName,
    this.skipFinalSnapshot,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'availabilityZone': ?availabilityZone,
      'backupRetentionEnabled': ?backupRetentionEnabled,
      'blueprintId': blueprintId,
      'bundleId': bundleId,
      'finalSnapshotName': ?finalSnapshotName,
      'masterDatabaseName': masterDatabaseName,
      'masterPassword': masterPassword,
      'masterUsername': masterUsername,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'relationalDatabaseName': relationalDatabaseName,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'tags': ?tags,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionEnabled: (() { final guardedValue = map['backupRetentionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blueprintId: pulumi.Input.fromValue(map['blueprintId'] as String),
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
      finalSnapshotName: (() { final guardedValue = map['finalSnapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterDatabaseName: pulumi.Input.fromValue(map['masterDatabaseName'] as String),
      masterPassword: pulumi.Input.fromValue(map['masterPassword'] as String),
      masterUsername: pulumi.Input.fromValue(map['masterUsername'] as String),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationalDatabaseName: pulumi.Input.fromValue(map['relationalDatabaseName'] as String),
      skipFinalSnapshot: (() { final guardedValue = map['skipFinalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
