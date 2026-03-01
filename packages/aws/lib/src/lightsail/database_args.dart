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

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DatabaseArgs({
    bool? applyImmediately,
    String? availabilityZone,
    bool? backupRetentionEnabled,
    required String blueprintId,
    required String bundleId,
    String? finalSnapshotName,
    required String masterDatabaseName,
    required String masterPassword,
    required String masterUsername,
    String? preferredBackupWindow,
    String? preferredMaintenanceWindow,
    bool? publiclyAccessible,
    String? region,
    required String relationalDatabaseName,
    bool? skipFinalSnapshot,
    Map<String, String>? tags,
  }) : applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
       availabilityZone = pulumi.Input.asOptionalInput<String>(
         availabilityZone,
       ),
       backupRetentionEnabled = pulumi.Input.asOptionalInput<bool>(
         backupRetentionEnabled,
       ),
       blueprintId = pulumi.Input.asInput<String>(blueprintId),
       bundleId = pulumi.Input.asInput<String>(bundleId),
       finalSnapshotName = pulumi.Input.asOptionalInput<String>(
         finalSnapshotName,
       ),
       masterDatabaseName = pulumi.Input.asInput<String>(masterDatabaseName),
       masterPassword = pulumi.Input.asInput<String>(masterPassword),
       masterUsername = pulumi.Input.asInput<String>(masterUsername),
       preferredBackupWindow = pulumi.Input.asOptionalInput<String>(
         preferredBackupWindow,
       ),
       preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(
         preferredMaintenanceWindow,
       ),
       publiclyAccessible = pulumi.Input.asOptionalInput<bool>(
         publiclyAccessible,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       relationalDatabaseName = pulumi.Input.asInput<String>(
         relationalDatabaseName,
       ),
       skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(
         skipFinalSnapshot,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      backupRetentionEnabled: map['backupRetentionEnabled'] == null
          ? null
          : map['backupRetentionEnabled'] as bool,
      blueprintId: map['blueprintId'] as String,
      bundleId: map['bundleId'] as String,
      finalSnapshotName: map['finalSnapshotName'] == null
          ? null
          : map['finalSnapshotName'] as String,
      masterDatabaseName: map['masterDatabaseName'] as String,
      masterPassword: map['masterPassword'] as String,
      masterUsername: map['masterUsername'] as String,
      preferredBackupWindow: map['preferredBackupWindow'] == null
          ? null
          : map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      relationalDatabaseName: map['relationalDatabaseName'] as String,
      skipFinalSnapshot: map['skipFinalSnapshot'] == null
          ? null
          : map['skipFinalSnapshot'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
