// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  final pulumi.Input<bool>? applyImmediately;
  /// ARN of the database (matches `id`).
  final pulumi.Input<String>? arn;
  /// Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  final pulumi.Input<String>? availabilityZone;
  /// Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  final pulumi.Input<bool>? backupRetentionEnabled;
  /// Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  final pulumi.Input<String>? blueprintId;
  /// Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  final pulumi.Input<String>? bundleId;
  /// Certificate associated with the database.
  final pulumi.Input<String>? caCertificateIdentifier;
  /// Number of vCPUs for the database.
  final pulumi.Input<int>? cpuCount;
  /// Date and time when the database was created.
  final pulumi.Input<String>? createdAt;
  /// Size of the disk for the database.
  final pulumi.Input<double>? diskSize;
  /// Database software (for example, MySQL).
  final pulumi.Input<String>? engine;
  /// Database engine version (for example, 5.7.23).
  final pulumi.Input<String>? engineVersion;
  /// Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  final pulumi.Input<String>? finalSnapshotName;
  /// Name of the master database created when the Lightsail database resource is created.
  final pulumi.Input<String>? masterDatabaseName;
  /// Master endpoint FQDN for the database.
  final pulumi.Input<String>? masterEndpointAddress;
  /// Master endpoint network port for the database.
  final pulumi.Input<int>? masterEndpointPort;
  /// Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  final pulumi.Input<String>? masterPassword;
  /// Master user name for your database.
  final pulumi.Input<String>? masterUsername;
  /// Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  final pulumi.Input<String>? preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Amount of RAM in GB for the database.
  final pulumi.Input<double>? ramSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? relationalDatabaseName;
  /// Secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database.
  final pulumi.Input<String>? secondaryAvailabilityZone;
  /// Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  final pulumi.Input<bool>? skipFinalSnapshot;
  /// Support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String>? supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DatabaseState].
  /// [applyImmediately] Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  /// [arn] ARN of the database (matches `id`).
  /// [availabilityZone] Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  /// [backupRetentionEnabled] Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  /// [blueprintId] Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  /// [bundleId] Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  /// [caCertificateIdentifier] Certificate associated with the database.
  /// [cpuCount] Number of vCPUs for the database.
  /// [createdAt] Date and time when the database was created.
  /// [diskSize] Size of the disk for the database.
  /// [engine] Database software (for example, MySQL).
  /// [engineVersion] Database engine version (for example, 5.7.23).
  /// [finalSnapshotName] Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  /// [masterDatabaseName] Name of the master database created when the Lightsail database resource is created.
  /// [masterEndpointAddress] Master endpoint FQDN for the database.
  /// [masterEndpointPort] Master endpoint network port for the database.
  /// [masterPassword] Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  /// [masterUsername] Master user name for your database.
  /// [preferredBackupWindow] Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  /// [publiclyAccessible] Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  /// [ramSize] Amount of RAM in GB for the database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationalDatabaseName] Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  /// [secondaryAvailabilityZone] Secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database.
  /// [skipFinalSnapshot] Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  /// [supportCode] Support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DatabaseState({
    this.applyImmediately,
    this.arn,
    this.availabilityZone,
    this.backupRetentionEnabled,
    this.blueprintId,
    this.bundleId,
    this.caCertificateIdentifier,
    this.cpuCount,
    this.createdAt,
    this.diskSize,
    this.engine,
    this.engineVersion,
    this.finalSnapshotName,
    this.masterDatabaseName,
    this.masterEndpointAddress,
    this.masterEndpointPort,
    this.masterPassword,
    this.masterUsername,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.ramSize,
    this.region,
    this.relationalDatabaseName,
    this.secondaryAvailabilityZone,
    this.skipFinalSnapshot,
    this.supportCode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'backupRetentionEnabled': ?backupRetentionEnabled,
      'blueprintId': ?blueprintId,
      'bundleId': ?bundleId,
      'caCertificateIdentifier': ?caCertificateIdentifier,
      'cpuCount': ?cpuCount,
      'createdAt': ?createdAt,
      'diskSize': ?diskSize,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotName': ?finalSnapshotName,
      'masterDatabaseName': ?masterDatabaseName,
      'masterEndpointAddress': ?masterEndpointAddress,
      'masterEndpointPort': ?masterEndpointPort,
      'masterPassword': ?masterPassword,
      'masterUsername': ?masterUsername,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'ramSize': ?ramSize,
      'region': ?region,
      'relationalDatabaseName': ?relationalDatabaseName,
      'secondaryAvailabilityZone': ?secondaryAvailabilityZone,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'supportCode': ?supportCode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionEnabled: (() { final guardedValue = map['backupRetentionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blueprintId: (() { final guardedValue = map['blueprintId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caCertificateIdentifier: (() { final guardedValue = map['caCertificateIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalSnapshotName: (() { final guardedValue = map['finalSnapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterDatabaseName: (() { final guardedValue = map['masterDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterEndpointAddress: (() { final guardedValue = map['masterEndpointAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterEndpointPort: (() { final guardedValue = map['masterEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      masterPassword: (() { final guardedValue = map['masterPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ramSize: (() { final guardedValue = map['ramSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationalDatabaseName: (() { final guardedValue = map['relationalDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAvailabilityZone: (() { final guardedValue = map['secondaryAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipFinalSnapshot: (() { final guardedValue = map['skipFinalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

