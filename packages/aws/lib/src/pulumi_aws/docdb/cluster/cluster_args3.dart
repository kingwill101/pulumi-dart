// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration.dart';

/// The set of arguments for Cluster.
class ClusterArgs3 {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  final Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// DocumentDB automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument if necessary.
  final Input<List<String>>? availabilityZones;

  /// The days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  final Input<int>? backupRetentionPeriod;

  /// The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  final Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  final Input<String>? clusterIdentifierPrefix;

  /// List of DocumentDB Instances that are a part of this cluster
  final Input<List<String>>? clusterMembers;

  /// A cluster parameter group to associate with the cluster.
  final Input<String>? dbClusterParameterGroupName;

  /// A DB subnet group to associate with this DB instance.
  final Input<String>? dbSubnetGroupName;

  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtection;

  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span>, <span pulumi-lang-nodejs="`profiler`" pulumi-lang-dotnet="`Profiler`" pulumi-lang-go="`profiler`" pulumi-lang-python="`profiler`" pulumi-lang-yaml="`profiler`" pulumi-lang-java="`profiler`">`profiler`</span>.
  final Input<List<String>>? enabledCloudwatchLogsExports;

  /// The name of the database engine to be used for this DB cluster. Defaults to <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Valid values: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>.
  final Input<String>? engine;

  /// The database engine version. Updating this argument results in an outage.
  final Input<String>? engineVersion;

  /// The name of your final DB snapshot
  /// when this DB cluster is deleted. If omitted, no final snapshot will be
  /// made.
  final Input<String>? finalSnapshotIdentifier;

  /// The global cluster identifier specified on <span pulumi-lang-nodejs="`aws.docdb.GlobalCluster`" pulumi-lang-dotnet="`aws.docdb.GlobalCluster`" pulumi-lang-go="`docdb.GlobalCluster`" pulumi-lang-python="`docdb.GlobalCluster`" pulumi-lang-yaml="`aws.docdb.GlobalCluster`" pulumi-lang-java="`aws.docdb.GlobalCluster`">`aws.docdb.GlobalCluster`</span>.
  final Input<String>? globalClusterIdentifier;

  /// The ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  final Input<String>? kmsKeyId;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is provided.
  final Input<bool>? manageMasterUserPassword;

  /// Password for the master DB user. Note that this may
  /// show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints. Conflicts with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> and <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span>.
  final Input<String>? masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may
  /// show up in logs. Please refer to the DocumentDB Naming Constraints. Conflicts with <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> and <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span>.
  final Input<String>? masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  final Input<int>? masterPasswordWoVersion;

  /// Username for the master DB user.
  final Input<String>? masterUsername;

  /// The network type of the DB cluster (`IPV4` or `DUAL`).
  final Input<String>? networkType;

  /// The port on which the DB accepts connections
  final Input<int>? port;

  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  final Input<String>? preferredBackupWindow;

  /// The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  final Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  final Input<ClusterRestoreToPointInTime>? restoreToPointInTime;

  /// Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  final Input<ClusterServerlessV2ScalingConfiguration>?
      serverlessV2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  final Input<String>? snapshotIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? storageEncrypted;

  /// The storage type to associate with the DB cluster. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`iopt1`" pulumi-lang-dotnet="`Iopt1`" pulumi-lang-go="`iopt1`" pulumi-lang-python="`iopt1`" pulumi-lang-yaml="`iopt1`" pulumi-lang-java="`iopt1`">`iopt1`</span>.
  final Input<String>? storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  final Input<List<String>>? vpcSecurityGroupIds;

  ClusterArgs3({
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.availabilityZones,
    this.backupRetentionPeriod,
    this.clusterIdentifier,
    this.clusterIdentifierPrefix,
    this.clusterMembers,
    this.dbClusterParameterGroupName,
    this.dbSubnetGroupName,
    this.deletionProtection,
    this.enabledCloudwatchLogsExports,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.kmsKeyId,
    this.manageMasterUserPassword,
    this.masterPassword,
    this.masterPasswordWo,
    this.masterPasswordWoVersion,
    this.masterUsername,
    this.networkType,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    this.restoreToPointInTime,
    this.serverlessV2ScalingConfiguration,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.storageEncrypted,
    this.storageType,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowMajorVersionUpgradeValue = allowMajorVersionUpgrade;
    if (allowMajorVersionUpgradeValue != null) {
      map['allowMajorVersionUpgrade'] = allowMajorVersionUpgradeValue;
    }
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final backupRetentionPeriodValue = backupRetentionPeriod;
    if (backupRetentionPeriodValue != null) {
      map['backupRetentionPeriod'] = backupRetentionPeriodValue;
    }
    final clusterIdentifierValue = clusterIdentifier;
    if (clusterIdentifierValue != null) {
      map['clusterIdentifier'] = clusterIdentifierValue;
    }
    final clusterIdentifierPrefixValue = clusterIdentifierPrefix;
    if (clusterIdentifierPrefixValue != null) {
      map['clusterIdentifierPrefix'] = clusterIdentifierPrefixValue;
    }
    final clusterMembersValue = clusterMembers;
    if (clusterMembersValue != null) {
      map['clusterMembers'] = clusterMembersValue;
    }
    final dbClusterParameterGroupNameValue = dbClusterParameterGroupName;
    if (dbClusterParameterGroupNameValue != null) {
      map['dbClusterParameterGroupName'] = dbClusterParameterGroupNameValue;
    }
    final dbSubnetGroupNameValue = dbSubnetGroupName;
    if (dbSubnetGroupNameValue != null) {
      map['dbSubnetGroupName'] = dbSubnetGroupNameValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final enabledCloudwatchLogsExportsValue = enabledCloudwatchLogsExports;
    if (enabledCloudwatchLogsExportsValue != null) {
      map['enabledCloudwatchLogsExports'] = enabledCloudwatchLogsExportsValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final finalSnapshotIdentifierValue = finalSnapshotIdentifier;
    if (finalSnapshotIdentifierValue != null) {
      map['finalSnapshotIdentifier'] = finalSnapshotIdentifierValue;
    }
    final globalClusterIdentifierValue = globalClusterIdentifier;
    if (globalClusterIdentifierValue != null) {
      map['globalClusterIdentifier'] = globalClusterIdentifierValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final manageMasterUserPasswordValue = manageMasterUserPassword;
    if (manageMasterUserPasswordValue != null) {
      map['manageMasterUserPassword'] = manageMasterUserPasswordValue;
    }
    final masterPasswordValue = masterPassword;
    if (masterPasswordValue != null) {
      map['masterPassword'] = masterPasswordValue;
    }
    final masterPasswordWoValue = masterPasswordWo;
    if (masterPasswordWoValue != null) {
      map['masterPasswordWo'] = masterPasswordWoValue;
    }
    final masterPasswordWoVersionValue = masterPasswordWoVersion;
    if (masterPasswordWoVersionValue != null) {
      map['masterPasswordWoVersion'] = masterPasswordWoVersionValue;
    }
    final masterUsernameValue = masterUsername;
    if (masterUsernameValue != null) {
      map['masterUsername'] = masterUsernameValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final restoreToPointInTimeValue = restoreToPointInTime;
    if (restoreToPointInTimeValue != null) {
      map['restoreToPointInTime'] = Input.mapOptionalInputValue<
              ClusterRestoreToPointInTime, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final serverlessV2ScalingConfigurationValue =
        serverlessV2ScalingConfiguration;
    if (serverlessV2ScalingConfigurationValue != null) {
      map['serverlessV2ScalingConfiguration'] = Input.mapOptionalInputValue<
              ClusterServerlessV2ScalingConfiguration, Map<String, dynamic>>(
          serverlessV2ScalingConfigurationValue, (value) => value.toMap());
    }
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final snapshotIdentifierValue = snapshotIdentifier;
    if (snapshotIdentifierValue != null) {
      map['snapshotIdentifier'] = snapshotIdentifierValue;
    }
    final storageEncryptedValue = storageEncrypted;
    if (storageEncryptedValue != null) {
      map['storageEncrypted'] = storageEncryptedValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory ClusterArgs3.fromMap(Map<String, dynamic> map) {
    return ClusterArgs3(
      allowMajorVersionUpgrade:
          Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZones:
          Input.asOptionalInput<List<String>>(map['availabilityZones']),
      backupRetentionPeriod:
          Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      clusterIdentifier:
          Input.asOptionalInput<String>(map['clusterIdentifier']),
      clusterIdentifierPrefix:
          Input.asOptionalInput<String>(map['clusterIdentifierPrefix']),
      clusterMembers:
          Input.asOptionalInput<List<String>>(map['clusterMembers']),
      dbClusterParameterGroupName:
          Input.asOptionalInput<String>(map['dbClusterParameterGroupName']),
      dbSubnetGroupName:
          Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      enabledCloudwatchLogsExports: Input.asOptionalInput<List<String>>(
          map['enabledCloudwatchLogsExports']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      manageMasterUserPassword:
          Input.asOptionalInput<bool>(map['manageMasterUserPassword']),
      masterPassword: Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordWo: Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUsername: Input.asOptionalInput<String>(map['masterUsername']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      region: Input.asOptionalInput<String>(map['region']),
      restoreToPointInTime: Input.asOptionalInput<ClusterRestoreToPointInTime>(
          map['restoreToPointInTime']),
      serverlessV2ScalingConfiguration:
          Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration>(
              map['serverlessV2ScalingConfiguration']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          Input.asOptionalInput<String>(map['snapshotIdentifier']),
      storageEncrypted: Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
