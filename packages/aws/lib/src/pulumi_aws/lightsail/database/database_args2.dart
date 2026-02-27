// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Database.
class DatabaseArgs2 {
  /// Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  final Input<bool>? applyImmediately;

  /// Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  final Input<String>? availabilityZone;

  /// Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  final Input<bool>? backupRetentionEnabled;

  /// Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  final Input<String> blueprintId;

  /// Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  final Input<String> bundleId;

  /// Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  final Input<String>? finalSnapshotName;

  /// Name of the master database created when the Lightsail database resource is created.
  final Input<String> masterDatabaseName;

  /// Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  final Input<String> masterPassword;

  /// Master user name for your database.
  final Input<String> masterUsername;

  /// Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  final Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  final Input<String>? preferredMaintenanceWindow;

  /// Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final Input<String> relationalDatabaseName;

  /// Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  final Input<bool>? skipFinalSnapshot;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DatabaseArgs2({
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
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final backupRetentionEnabledValue = backupRetentionEnabled;
    if (backupRetentionEnabledValue != null) {
      map['backupRetentionEnabled'] = backupRetentionEnabledValue;
    }
    map['blueprintId'] = blueprintId;
    map['bundleId'] = bundleId;
    final finalSnapshotNameValue = finalSnapshotName;
    if (finalSnapshotNameValue != null) {
      map['finalSnapshotName'] = finalSnapshotNameValue;
    }
    map['masterDatabaseName'] = masterDatabaseName;
    map['masterPassword'] = masterPassword;
    map['masterUsername'] = masterUsername;
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['relationalDatabaseName'] = relationalDatabaseName;
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DatabaseArgs2.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs2(
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      backupRetentionEnabled:
          Input.asOptionalInput<bool>(map['backupRetentionEnabled']),
      blueprintId: Input.asInput<String>(map['blueprintId']),
      bundleId: Input.asInput<String>(map['bundleId']),
      finalSnapshotName:
          Input.asOptionalInput<String>(map['finalSnapshotName']),
      masterDatabaseName: Input.asInput<String>(map['masterDatabaseName']),
      masterPassword: Input.asInput<String>(map['masterPassword']),
      masterUsername: Input.asInput<String>(map['masterUsername']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      relationalDatabaseName:
          Input.asInput<String>(map['relationalDatabaseName']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
