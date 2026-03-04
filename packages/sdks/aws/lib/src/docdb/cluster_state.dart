// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_user_secret.dart';
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_serverless_v2_scaling_configuration.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`.
  final pulumi.Input<bool>? applyImmediately;

  /// Amazon Resource Name (ARN) of cluster
  final pulumi.Input<String>? arn;

  /// A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// DocumentDB automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignore_changes` argument if necessary.
  final pulumi.Input<List<String>>? availabilityZones;

  /// The days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;

  /// The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  final pulumi.Input<String>? clusterIdentifierPrefix;

  /// List of DocumentDB Instances that are a part of this cluster
  final pulumi.Input<List<String>>? clusterMembers;

  /// The DocumentDB Cluster Resource ID
  final pulumi.Input<String>? clusterResourceId;

  /// A cluster parameter group to associate with the cluster.
  final pulumi.Input<String>? dbClusterParameterGroupName;

  /// A DB subnet group to associate with this DB instance.
  final pulumi.Input<String>? dbSubnetGroupName;

  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: `audit`, `profiler`.
  final pulumi.Input<List<String>>? enabledCloudwatchLogsExports;

  /// The DNS address of the DocumentDB instance
  final pulumi.Input<String>? endpoint;

  /// The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  final pulumi.Input<String>? engine;

  /// The database engine version. Updating this argument results in an outage.
  final pulumi.Input<String>? engineVersion;

  /// The name of your final DB snapshot
  /// when this DB cluster is deleted. If omitted, no final snapshot will be
  /// made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  final pulumi.Input<String>? globalClusterIdentifier;

  /// The Route53 Hosted Zone ID of the endpoint
  final pulumi.Input<String>? hostedZoneId;

  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;

  /// Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `master_password` or `master_password_wo` is provided.
  final pulumi.Input<bool>? manageMasterUserPassword;

  /// Password for the master DB user. Note that this may
  /// show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints. Conflicts with `master_password_wo` and `manage_master_user_password`.
  final pulumi.Input<String>? masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may
  /// show up in logs. Please refer to the DocumentDB Naming Constraints. Conflicts with `master_password` and `manage_master_user_password`.
  final pulumi.Input<String>? masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  final pulumi.Input<int>? masterPasswordWoVersion;
  final pulumi.Input<List<ClusterMasterUserSecret>>? masterUserSecrets;

  /// Username for the master DB user.
  final pulumi.Input<String>? masterUsername;

  /// The network type of the DB cluster (`IPV4` or `DUAL`).
  final pulumi.Input<String>? networkType;

  /// The port on which the DB accepts connections
  final pulumi.Input<int>? port;

  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  final pulumi.Input<String>? preferredBackupWindow;

  /// The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  final pulumi.Input<String>? readerEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  final pulumi.Input<ClusterRestoreToPointInTime>? restoreToPointInTime;

  /// Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  final pulumi.Input<ClusterServerlessV2ScalingConfiguration>?
  serverlessV2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  final pulumi.Input<String>? snapshotIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is `false`.
  final pulumi.Input<bool>? storageEncrypted;

  /// The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  final pulumi.Input<String>? storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ClusterState].
  /// [allowMajorVersionUpgrade] A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  /// [applyImmediately] Specifies whether any cluster modifications
  /// [arn] Amazon Resource Name (ARN) of cluster
  /// [availabilityZones] A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// [backupRetentionPeriod] The days to retain backups for. Default `1`
  /// [clusterIdentifier] The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [clusterMembers] List of DocumentDB Instances that are a part of this cluster
  /// [clusterResourceId] The DocumentDB Cluster Resource ID
  /// [dbClusterParameterGroupName] A cluster parameter group to associate with the cluster.
  /// [dbSubnetGroupName] A DB subnet group to associate with this DB instance.
  /// [deletionProtection] A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  /// [enabledCloudwatchLogsExports] List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// [endpoint] The DNS address of the DocumentDB instance
  /// [engine] The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  /// [engineVersion] The database engine version. Updating this argument results in an outage.
  /// [finalSnapshotIdentifier] The name of your final DB snapshot
  /// [globalClusterIdentifier] The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  /// [hostedZoneId] The Route53 Hosted Zone ID of the endpoint
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [manageMasterUserPassword] Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `master_password` or `master_password_wo` is provided.
  /// [masterPassword] Password for the master DB user. Note that this may
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  /// [masterUserSecrets] Optional.
  /// [masterUsername] Username for the master DB user.
  /// [networkType] The network type of the DB cluster (`IPV4` or `DUAL`).
  /// [port] The port on which the DB accepts connections
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  /// [readerEndpoint] A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restoreToPointInTime] A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  /// [serverlessV2ScalingConfiguration] Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false`.
  /// [storageType] The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate
  ClusterState({
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.arn,
    this.availabilityZones,
    this.backupRetentionPeriod,
    this.clusterIdentifier,
    this.clusterIdentifierPrefix,
    this.clusterMembers,
    this.clusterResourceId,
    this.dbClusterParameterGroupName,
    this.dbSubnetGroupName,
    this.deletionProtection,
    this.enabledCloudwatchLogsExports,
    this.endpoint,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.hostedZoneId,
    this.kmsKeyId,
    this.manageMasterUserPassword,
    this.masterPassword,
    this.masterPasswordWo,
    this.masterPasswordWoVersion,
    this.masterUserSecrets,
    this.masterUsername,
    this.networkType,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.readerEndpoint,
    this.region,
    this.restoreToPointInTime,
    this.serverlessV2ScalingConfiguration,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.storageEncrypted,
    this.storageType,
    this.tags,
    this.tagsAll,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterIdentifierPrefix': ?clusterIdentifierPrefix,
      'clusterMembers': ?clusterMembers,
      'clusterResourceId': ?clusterResourceId,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'deletionProtection': ?deletionProtection,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'hostedZoneId': ?hostedZoneId,
      'kmsKeyId': ?kmsKeyId,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterPassword': ?masterPassword,
      'masterPasswordWo': ?masterPasswordWo,
      'masterPasswordWoVersion': ?masterPasswordWoVersion,
      'masterUserSecrets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterMasterUserSecret>,
            List<Map<String, dynamic>>
          >(
            masterUserSecrets,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterMasterUserSecret,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'masterUsername': ?masterUsername,
      'networkType': ?networkType,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'readerEndpoint': ?readerEndpoint,
      'region': ?region,
      'restoreToPointInTime':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterRestoreToPointInTime,
            Map<String, dynamic>
          >(restoreToPointInTime, (value) => value.toMap()),
      'serverlessV2ScalingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterServerlessV2ScalingConfiguration,
            Map<String, dynamic>
          >(serverlessV2ScalingConfiguration, (value) => value.toMap()),
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotIdentifier': ?snapshotIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      allowMajorVersionUpgrade: (() {
        final guardedValue = map['allowMajorVersionUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applyImmediately: (() {
        final guardedValue = map['applyImmediately'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZones: (() {
        final guardedValue = map['availabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      clusterIdentifier: (() {
        final guardedValue = map['clusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterIdentifierPrefix: (() {
        final guardedValue = map['clusterIdentifierPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterMembers: (() {
        final guardedValue = map['clusterMembers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      clusterResourceId: (() {
        final guardedValue = map['clusterResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterParameterGroupName: (() {
        final guardedValue = map['dbClusterParameterGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbSubnetGroupName: (() {
        final guardedValue = map['dbSubnetGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabledCloudwatchLogsExports: (() {
        final guardedValue = map['enabledCloudwatchLogsExports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      finalSnapshotIdentifier: (() {
        final guardedValue = map['finalSnapshotIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalClusterIdentifier: (() {
        final guardedValue = map['globalClusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostedZoneId: (() {
        final guardedValue = map['hostedZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manageMasterUserPassword: (() {
        final guardedValue = map['manageMasterUserPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      masterPassword: (() {
        final guardedValue = map['masterPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterPasswordWo: (() {
        final guardedValue = map['masterPasswordWo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterPasswordWoVersion: (() {
        final guardedValue = map['masterPasswordWoVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterUserSecrets: (() {
        final guardedValue = map['masterUserSecrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterMasterUserSecret>(
            guardedValue,
            (value) => ClusterMasterUserSecret.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      masterUsername: (() {
        final guardedValue = map['masterUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preferredBackupWindow: (() {
        final guardedValue = map['preferredBackupWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredMaintenanceWindow: (() {
        final guardedValue = map['preferredMaintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readerEndpoint: (() {
        final guardedValue = map['readerEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restoreToPointInTime: (() {
        final guardedValue = map['restoreToPointInTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterRestoreToPointInTime.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serverlessV2ScalingConfiguration: (() {
        final guardedValue = map['serverlessV2ScalingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterServerlessV2ScalingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skipFinalSnapshot: (() {
        final guardedValue = map['skipFinalSnapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snapshotIdentifier: (() {
        final guardedValue = map['snapshotIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageEncrypted: (() {
        final guardedValue = map['storageEncrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
