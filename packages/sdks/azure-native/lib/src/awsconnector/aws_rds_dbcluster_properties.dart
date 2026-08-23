// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbcluster_role.dart';
import 'master_user_secret.dart';
import 'rds_db_cluster_endpoint.dart';
import 'read_endpoint.dart';
import 'scaling_configuration.dart';
import 'serverless_v2_scaling_configuration.dart';
import 'tag.dart';

/// Definition of awsRdsDBCluster
class AwsRdsDBClusterProperties {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  final pulumi.Input<int>? allocatedStorage;
  /// Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
  final pulumi.Input<List<DBClusterRole>>? associatedRoles;
  /// A value that indicates whether minor engine upgrades are applied automatically to the DB cluster during the maintenance window. By default, minor engine upgrades are applied automatically.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// A list of Availability Zones (AZs) where instances in the DB cluster can be created. For information on AWS Regions and Availability Zones, see Choosing the Regions and Availability Zones in the Amazon Aurora User Guide.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The target backtrack window, in seconds. To disable backtracking, set this value to 0.
  final pulumi.Input<int>? backtrackWindow;
  /// The number of days for which automated backups are retained.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. The default is not to copy them.
  final pulumi.Input<bool>? copyTagsToSnapshot;
  /// The name of your database. If you don't provide a name, then Amazon RDS won't create a database in this DB cluster. For naming constraints, see Naming Constraints in the Amazon RDS User Guide.
  final pulumi.Input<String>? databaseName;
  /// The Amazon Resource Name (ARN) for the DB cluster.
  final pulumi.Input<String>? dbClusterArn;
  /// The DB cluster identifier. This parameter is stored as a lowercase string.
  final pulumi.Input<String>? dbClusterIdentifier;
  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge.
  final pulumi.Input<String>? dbClusterInstanceClass;
  /// The name of the DB cluster parameter group to associate with this DB cluster.
  final pulumi.Input<String>? dbClusterParameterGroupName;
  /// The AWS Region-unique, immutable identifier for the DB cluster.
  final pulumi.Input<String>? dbClusterResourceId;
  /// The name of the DB parameter group to apply to all instances of the DB cluster.
  final pulumi.Input<String>? dbInstanceParameterGroupName;
  /// A DB subnet group that you want to associate with this DB cluster.
  final pulumi.Input<String>? dbSubnetGroupName;
  /// Reserved for future use.
  final pulumi.Input<String>? dbSystemId;
  /// A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  final pulumi.Input<bool>? deletionProtection;
  /// The Active Directory directory ID to create the DB cluster in.
  final pulumi.Input<String>? domain;
  /// Specify the name of the IAM role to be used when making API calls to the Directory Service.
  final pulumi.Input<String>? domainIAMRoleName;
  /// The list of log types that need to be enabled for exporting to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see Publishing Database Logs to Amazon CloudWatch Logs in the Amazon Aurora User Guide.
  final pulumi.Input<List<String>>? enableCloudwatchLogsExports;
  /// Specifies whether to enable this DB cluster to forward write operations to the primary cluster of a global cluster (Aurora global database). By default, write operations are not allowed on Aurora DB clusters that are secondary clusters in an Aurora global database.
  final pulumi.Input<bool>? enableGlobalWriteForwarding;
  /// A value that indicates whether to enable the HTTP endpoint for DB cluster. By default, the HTTP endpoint is disabled.
  final pulumi.Input<bool>? enableHttpEndpoint;
  /// A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.
  final pulumi.Input<bool>? enableIAMDatabaseAuthentication;
  /// Property endpoint
  final pulumi.Input<RdsDbClusterEndpoint>? endpoint;
  /// The name of the database engine to be used for this DB cluster. Valid Values: aurora (for MySQL 5.6-compatible Aurora), aurora-mysql (for MySQL 5.7-compatible Aurora), and aurora-postgresql
  final pulumi.Input<String>? engine;
  /// The DB engine mode of the DB cluster, either provisioned, serverless, parallelquery, global, or multimaster.
  final pulumi.Input<String>? engineMode;
  /// The version number of the database engine to use.
  final pulumi.Input<String>? engineVersion;
  /// If you are configuring an Aurora global database cluster and want your Aurora DB cluster to be a secondary member in the global database cluster, specify the global cluster ID of the global database cluster. To define the primary database cluster of the global cluster, use the AWS::RDS::GlobalCluster resource.If you aren't configuring a global database cluster, don't specify this property.
  final pulumi.Input<String>? globalClusterIdentifier;
  /// The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster.
  final pulumi.Input<int>? iops;
  /// The Amazon Resource Name (ARN) of the AWS Key Management Service master key that is used to encrypt the database instances in the DB cluster, such as arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef. If you enable the StorageEncrypted property but don't specify this property, the default master key is used. If you specify this property, you must set the StorageEncrypted property to true.
  final pulumi.Input<String>? kmsKeyId;
  /// A value that indicates whether to manage the master user password with AWS Secrets Manager.
  final pulumi.Input<bool>? manageMasterUserPassword;
  /// The master password for the DB instance.
  final pulumi.Input<String>? masterUserPassword;
  /// Contains the secret managed by RDS in AWS Secrets Manager for the master user password.
  final pulumi.Input<MasterUserSecret>? masterUserSecret;
  /// The name of the master user for the DB cluster. You must specify MasterUsername, unless you specify SnapshotIdentifier. In that case, don't specify MasterUsername.
  final pulumi.Input<String>? masterUsername;
  /// The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0.
  final pulumi.Input<int>? monitoringInterval;
  /// The Amazon Resource Name (ARN) for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
  final pulumi.Input<String>? monitoringRoleArn;
  /// The network type of the DB cluster.
  final pulumi.Input<String>? networkType;
  /// A value that indicates whether to turn on Performance Insights for the DB cluster.
  final pulumi.Input<bool>? performanceInsightsEnabled;
  /// The Amazon Web Services KMS key identifier for encryption of Performance Insights data.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;
  /// The amount of time, in days, to retain Performance Insights data.
  final pulumi.Input<int>? performanceInsightsRetentionPeriod;
  /// The port number on which the instances in the DB cluster accept connections. Default: 3306 if engine is set as aurora or 5432 if set to aurora-postgresql.
  final pulumi.Input<int>? port;
  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see Adjusting the Preferred DB Cluster Maintenance Window in the Amazon Aurora User Guide.
  final pulumi.Input<String>? preferredBackupWindow;
  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see Adjusting the Preferred DB Cluster Maintenance Window in the Amazon Aurora User Guide.
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// A value that indicates whether the DB cluster is publicly accessible.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Property readEndpoint
  final pulumi.Input<ReadEndpoint>? readEndpoint;
  /// The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.
  final pulumi.Input<String>? replicationSourceIdentifier;
  /// The date and time to restore the DB cluster to. Value must be a time in Universal Coordinated Time (UTC) format. An example: 2015-03-07T23:45:00Z
  final pulumi.Input<String>? restoreToTime;
  /// The type of restore to be performed. You can specify one of the following values:full-copy - The new DB cluster is restored as a full copy of the source DB cluster.copy-on-write - The new DB cluster is restored as a clone of the source DB cluster.
  final pulumi.Input<String>? restoreType;
  /// The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster. The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster.
  final pulumi.Input<ScalingConfiguration>? scalingConfiguration;
  /// Contains the scaling configuration of an Aurora Serverless v2 DB cluster. Contains the scaling configuration of an Aurora Serverless v2 DB cluster.
  final pulumi.Input<ServerlessV2ScalingConfiguration>? serverlessV2ScalingConfiguration;
  /// The identifier for the DB snapshot or DB cluster snapshot to restore from.You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.After you restore a DB cluster with a SnapshotIdentifier property, you must specify the same SnapshotIdentifier property for any future updates to the DB cluster. When you specify this property for an update, the DB cluster is not restored from the snapshot again, and the data in the database is not changed. However, if you don't specify the SnapshotIdentifier property, an empty DB cluster is created, and the original DB cluster is deleted. If you specify a property that is different from the previous snapshot restore property, the DB cluster is restored from the specified SnapshotIdentifier property, and the original DB cluster is deleted.
  final pulumi.Input<String>? snapshotIdentifier;
  /// The identifier of the source DB cluster from which to restore.
  final pulumi.Input<String>? sourceDBClusterIdentifier;
  /// The AWS Region which contains the source DB cluster when replicating a DB cluster. For example, us-east-1.
  final pulumi.Input<String>? sourceRegion;
  /// Indicates whether the DB instance is encrypted.If you specify the DBClusterIdentifier, SnapshotIdentifier, or SourceDBInstanceIdentifier property, don't specify this property. The value is inherited from the cluster, snapshot, or source DB instance.
  final pulumi.Input<bool>? storageEncrypted;
  /// Specifies the storage throughput value for the DB cluster. This setting applies only to the gp3 storage type.
  final pulumi.Input<int>? storageThroughput;
  /// Specifies the storage type to be associated with the DB cluster.
  final pulumi.Input<String>? storageType;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<Tag>>? tags;
  /// A value that indicates whether to restore the DB cluster to the latest restorable backup time. By default, the DB cluster is not restored to the latest restorable backup time.
  final pulumi.Input<bool>? useLatestRestorableTime;
  /// A list of EC2 VPC security groups to associate with this DB cluster.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [AwsRdsDBClusterProperties].
  /// [allocatedStorage] The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  /// [associatedRoles] Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
  /// [autoMinorVersionUpgrade] A value that indicates whether minor engine upgrades are applied automatically to the DB cluster during the maintenance window. By default, minor engine upgrades are applied automatically.
  /// [availabilityZones] A list of Availability Zones (AZs) where instances in the DB cluster can be created. For information on AWS Regions and Availability Zones, see Choosing the Regions and Availability Zones in the Amazon Aurora User Guide.
  /// [backtrackWindow] The target backtrack window, in seconds. To disable backtracking, set this value to 0.
  /// [backupRetentionPeriod] The number of days for which automated backups are retained.
  /// [copyTagsToSnapshot] A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. The default is not to copy them.
  /// [databaseName] The name of your database. If you don't provide a name, then Amazon RDS won't create a database in this DB cluster. For naming constraints, see Naming Constraints in the Amazon RDS User Guide.
  /// [dbClusterArn] The Amazon Resource Name (ARN) for the DB cluster.
  /// [dbClusterIdentifier] The DB cluster identifier. This parameter is stored as a lowercase string.
  /// [dbClusterInstanceClass] The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge.
  /// [dbClusterParameterGroupName] The name of the DB cluster parameter group to associate with this DB cluster.
  /// [dbClusterResourceId] The AWS Region-unique, immutable identifier for the DB cluster.
  /// [dbInstanceParameterGroupName] The name of the DB parameter group to apply to all instances of the DB cluster.
  /// [dbSubnetGroupName] A DB subnet group that you want to associate with this DB cluster.
  /// [dbSystemId] Reserved for future use.
  /// [deletionProtection] A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  /// [domain] The Active Directory directory ID to create the DB cluster in.
  /// [domainIAMRoleName] Specify the name of the IAM role to be used when making API calls to the Directory Service.
  /// [enableCloudwatchLogsExports] The list of log types that need to be enabled for exporting to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see Publishing Database Logs to Amazon CloudWatch Logs in the Amazon Aurora User Guide.
  /// [enableGlobalWriteForwarding] Specifies whether to enable this DB cluster to forward write operations to the primary cluster of a global cluster (Aurora global database). By default, write operations are not allowed on Aurora DB clusters that are secondary clusters in an Aurora global database.
  /// [enableHttpEndpoint] A value that indicates whether to enable the HTTP endpoint for DB cluster. By default, the HTTP endpoint is disabled.
  /// [enableIAMDatabaseAuthentication] A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.
  /// [endpoint] Property endpoint
  /// [engine] The name of the database engine to be used for this DB cluster. Valid Values: aurora (for MySQL 5.6-compatible Aurora), aurora-mysql (for MySQL 5.7-compatible Aurora), and aurora-postgresql
  /// [engineMode] The DB engine mode of the DB cluster, either provisioned, serverless, parallelquery, global, or multimaster.
  /// [engineVersion] The version number of the database engine to use.
  /// [globalClusterIdentifier] If you are configuring an Aurora global database cluster and want your Aurora DB cluster to be a secondary member in the global database cluster, specify the global cluster ID of the global database cluster. To define the primary database cluster of the global cluster, use the AWS::RDS::GlobalCluster resource.If you aren't configuring a global database cluster, don't specify this property.
  /// [iops] The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster.
  /// [kmsKeyId] The Amazon Resource Name (ARN) of the AWS Key Management Service master key that is used to encrypt the database instances in the DB cluster, such as arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef. If you enable the StorageEncrypted property but don't specify this property, the default master key is used. If you specify this property, you must set the StorageEncrypted property to true.
  /// [manageMasterUserPassword] A value that indicates whether to manage the master user password with AWS Secrets Manager.
  /// [masterUserPassword] The master password for the DB instance.
  /// [masterUserSecret] Contains the secret managed by RDS in AWS Secrets Manager for the master user password.
  /// [masterUsername] The name of the master user for the DB cluster. You must specify MasterUsername, unless you specify SnapshotIdentifier. In that case, don't specify MasterUsername.
  /// [monitoringInterval] The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0.
  /// [monitoringRoleArn] The Amazon Resource Name (ARN) for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
  /// [networkType] The network type of the DB cluster.
  /// [performanceInsightsEnabled] A value that indicates whether to turn on Performance Insights for the DB cluster.
  /// [performanceInsightsKmsKeyId] The Amazon Web Services KMS key identifier for encryption of Performance Insights data.
  /// [performanceInsightsRetentionPeriod] The amount of time, in days, to retain Performance Insights data.
  /// [port] The port number on which the instances in the DB cluster accept connections. Default: 3306 if engine is set as aurora or 5432 if set to aurora-postgresql.
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see Adjusting the Preferred DB Cluster Maintenance Window in the Amazon Aurora User Guide.
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see Adjusting the Preferred DB Cluster Maintenance Window in the Amazon Aurora User Guide.
  /// [publiclyAccessible] A value that indicates whether the DB cluster is publicly accessible.
  /// [readEndpoint] Property readEndpoint
  /// [replicationSourceIdentifier] The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.
  /// [restoreToTime] The date and time to restore the DB cluster to. Value must be a time in Universal Coordinated Time (UTC) format. An example: 2015-03-07T23:45:00Z
  /// [restoreType] The type of restore to be performed. You can specify one of the following values:full-copy - The new DB cluster is restored as a full copy of the source DB cluster.copy-on-write - The new DB cluster is restored as a clone of the source DB cluster.
  /// [scalingConfiguration] The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster. The ScalingConfiguration property type specifies the scaling configuration of an Aurora Serverless DB cluster.
  /// [serverlessV2ScalingConfiguration] Contains the scaling configuration of an Aurora Serverless v2 DB cluster. Contains the scaling configuration of an Aurora Serverless v2 DB cluster.
  /// [snapshotIdentifier] The identifier for the DB snapshot or DB cluster snapshot to restore from.You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.After you restore a DB cluster with a SnapshotIdentifier property, you must specify the same SnapshotIdentifier property for any future updates to the DB cluster. When you specify this property for an update, the DB cluster is not restored from the snapshot again, and the data in the database is not changed. However, if you don't specify the SnapshotIdentifier property, an empty DB cluster is created, and the original DB cluster is deleted. If you specify a property that is different from the previous snapshot restore property, the DB cluster is restored from the specified SnapshotIdentifier property, and the original DB cluster is deleted.
  /// [sourceDBClusterIdentifier] The identifier of the source DB cluster from which to restore.
  /// [sourceRegion] The AWS Region which contains the source DB cluster when replicating a DB cluster. For example, us-east-1.
  /// [storageEncrypted] Indicates whether the DB instance is encrypted.If you specify the DBClusterIdentifier, SnapshotIdentifier, or SourceDBInstanceIdentifier property, don't specify this property. The value is inherited from the cluster, snapshot, or source DB instance.
  /// [storageThroughput] Specifies the storage throughput value for the DB cluster. This setting applies only to the gp3 storage type.
  /// [storageType] Specifies the storage type to be associated with the DB cluster.
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [useLatestRestorableTime] A value that indicates whether to restore the DB cluster to the latest restorable backup time. By default, the DB cluster is not restored to the latest restorable backup time.
  /// [vpcSecurityGroupIds] A list of EC2 VPC security groups to associate with this DB cluster.
  const AwsRdsDBClusterProperties({
    this.allocatedStorage,
    this.associatedRoles,
    this.autoMinorVersionUpgrade,
    this.availabilityZones,
    this.backtrackWindow,
    this.backupRetentionPeriod,
    this.copyTagsToSnapshot,
    this.databaseName,
    this.dbClusterArn,
    this.dbClusterIdentifier,
    this.dbClusterInstanceClass,
    this.dbClusterParameterGroupName,
    this.dbClusterResourceId,
    this.dbInstanceParameterGroupName,
    this.dbSubnetGroupName,
    this.dbSystemId,
    this.deletionProtection,
    this.domain,
    this.domainIAMRoleName,
    this.enableCloudwatchLogsExports,
    this.enableGlobalWriteForwarding,
    this.enableHttpEndpoint,
    this.enableIAMDatabaseAuthentication,
    this.endpoint,
    this.engine,
    this.engineMode,
    this.engineVersion,
    this.globalClusterIdentifier,
    this.iops,
    this.kmsKeyId,
    this.manageMasterUserPassword,
    this.masterUserPassword,
    this.masterUserSecret,
    this.masterUsername,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.networkType,
    this.performanceInsightsEnabled,
    this.performanceInsightsKmsKeyId,
    this.performanceInsightsRetentionPeriod,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.readEndpoint,
    this.replicationSourceIdentifier,
    this.restoreToTime,
    this.restoreType,
    this.scalingConfiguration,
    this.serverlessV2ScalingConfiguration,
    this.snapshotIdentifier,
    this.sourceDBClusterIdentifier,
    this.sourceRegion,
    this.storageEncrypted,
    this.storageThroughput,
    this.storageType,
    this.tags,
    this.useLatestRestorableTime,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'associatedRoles': ?pulumi.Input.mapOptionalInputValue<List<DBClusterRole>, List<Map<String, dynamic>>>(associatedRoles, (value) => pulumi.Input.encodeList<DBClusterRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZones': ?availabilityZones,
      'backtrackWindow': ?backtrackWindow,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'databaseName': ?databaseName,
      'dbClusterArn': ?dbClusterArn,
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbClusterInstanceClass': ?dbClusterInstanceClass,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbClusterResourceId': ?dbClusterResourceId,
      'dbInstanceParameterGroupName': ?dbInstanceParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbSystemId': ?dbSystemId,
      'deletionProtection': ?deletionProtection,
      'domain': ?domain,
      'domainIAMRoleName': ?domainIAMRoleName,
      'enableCloudwatchLogsExports': ?enableCloudwatchLogsExports,
      'enableGlobalWriteForwarding': ?enableGlobalWriteForwarding,
      'enableHttpEndpoint': ?enableHttpEndpoint,
      'enableIAMDatabaseAuthentication': ?enableIAMDatabaseAuthentication,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<RdsDbClusterEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'engine': ?engine,
      'engineMode': ?engineMode,
      'engineVersion': ?engineVersion,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterUserPassword': ?masterUserPassword,
      'masterUserSecret': ?pulumi.Input.mapOptionalInputValue<MasterUserSecret, Map<String, dynamic>>(masterUserSecret, (value) => value.toMap()),
      'masterUsername': ?masterUsername,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'networkType': ?networkType,
      'performanceInsightsEnabled': ?performanceInsightsEnabled,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'performanceInsightsRetentionPeriod': ?performanceInsightsRetentionPeriod,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'readEndpoint': ?pulumi.Input.mapOptionalInputValue<ReadEndpoint, Map<String, dynamic>>(readEndpoint, (value) => value.toMap()),
      'replicationSourceIdentifier': ?replicationSourceIdentifier,
      'restoreToTime': ?restoreToTime,
      'restoreType': ?restoreType,
      'scalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ScalingConfiguration, Map<String, dynamic>>(scalingConfiguration, (value) => value.toMap()),
      'serverlessV2ScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ServerlessV2ScalingConfiguration, Map<String, dynamic>>(serverlessV2ScalingConfiguration, (value) => value.toMap()),
      'snapshotIdentifier': ?snapshotIdentifier,
      'sourceDBClusterIdentifier': ?sourceDBClusterIdentifier,
      'sourceRegion': ?sourceRegion,
      'storageEncrypted': ?storageEncrypted,
      'storageThroughput': ?storageThroughput,
      'storageType': ?storageType,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useLatestRestorableTime': ?useLatestRestorableTime,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory AwsRdsDBClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsRdsDBClusterProperties(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      associatedRoles: (() { final guardedValue = map['associatedRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DBClusterRole>(guardedValue, (value) => DBClusterRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backtrackWindow: (() { final guardedValue = map['backtrackWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      copyTagsToSnapshot: (() { final guardedValue = map['copyTagsToSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterArn: (() { final guardedValue = map['dbClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterInstanceClass: (() { final guardedValue = map['dbClusterInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterParameterGroupName: (() { final guardedValue = map['dbClusterParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterResourceId: (() { final guardedValue = map['dbClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceParameterGroupName: (() { final guardedValue = map['dbInstanceParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSubnetGroupName: (() { final guardedValue = map['dbSubnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSystemId: (() { final guardedValue = map['dbSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIAMRoleName: (() { final guardedValue = map['domainIAMRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCloudwatchLogsExports: (() { final guardedValue = map['enableCloudwatchLogsExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableGlobalWriteForwarding: (() { final guardedValue = map['enableGlobalWriteForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableHttpEndpoint: (() { final guardedValue = map['enableHttpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIAMDatabaseAuthentication: (() { final guardedValue = map['enableIAMDatabaseAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RdsDbClusterEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineMode: (() { final guardedValue = map['engineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: (() { final guardedValue = map['globalClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageMasterUserPassword: (() { final guardedValue = map['manageMasterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterUserPassword: (() { final guardedValue = map['masterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserSecret: (() { final guardedValue = map['masterUserSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MasterUserSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsEnabled: (() { final guardedValue = map['performanceInsightsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceInsightsKmsKeyId: (() { final guardedValue = map['performanceInsightsKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsRetentionPeriod: (() { final guardedValue = map['performanceInsightsRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readEndpoint: (() { final guardedValue = map['readEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReadEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicationSourceIdentifier: (() { final guardedValue = map['replicationSourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreToTime: (() { final guardedValue = map['restoreToTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreType: (() { final guardedValue = map['restoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingConfiguration: (() { final guardedValue = map['scalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverlessV2ScalingConfiguration: (() { final guardedValue = map['serverlessV2ScalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessV2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotIdentifier: (() { final guardedValue = map['snapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDBClusterIdentifier: (() { final guardedValue = map['sourceDBClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageThroughput: (() { final guardedValue = map['storageThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useLatestRestorableTime: (() { final guardedValue = map['useLatestRestorableTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
