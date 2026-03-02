// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_serverless_v2_scaling_configuration.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engine_version` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;
  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Neptune Cluster ARN
  final pulumi.Input<String>? arn;
  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;
  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;
  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  final pulumi.Input<String>? clusterIdentifierPrefix;
  /// List of Neptune Instances that are a part of this cluster
  final pulumi.Input<List<String>>? clusterMembers;
  /// Neptune Cluster Resource ID
  final pulumi.Input<String>? clusterResourceId;
  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  final pulumi.Input<bool>? copyTagsToSnapshot;
  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  final pulumi.Input<bool>? deletionProtection;
  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  final pulumi.Input<List<String>>? enableCloudwatchLogsExports;
  /// DNS address of the Neptune instance
  final pulumi.Input<String>? endpoint;
  /// Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  final pulumi.Input<String>? engine;
  /// Database engine version.
  final pulumi.Input<String>? engineVersion;
  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;
  /// Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  final pulumi.Input<String>? globalClusterIdentifier;
  /// Route53 Hosted Zone ID of the endpoint
  final pulumi.Input<String>? hostedZoneId;
  /// Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  final pulumi.Input<bool>? iamDatabaseAuthenticationEnabled;
  /// List of ARNs for the IAM roles to associate to the Neptune Cluster.
  final pulumi.Input<List<String>>? iamRoles;
  /// ARN for the KMS encryption key. When specifying `kms_key_arn`, `storage_encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyArn;
  /// Cluster parameter group to associate with the cluster.
  final pulumi.Input<String>? neptuneClusterParameterGroupName;
  /// Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the `engine_version`.
  final pulumi.Input<String>? neptuneInstanceParameterGroupName;
  /// Neptune subnet group to associate with this Neptune instance.
  final pulumi.Input<String>? neptuneSubnetGroupName;
  /// Port on which the Neptune accepts connections. Default is `8182`.
  final pulumi.Input<int>? port;
  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  final pulumi.Input<String>? preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Read-only endpoint for the Neptune cluster, automatically load-balanced across replicas
  final pulumi.Input<String>? readerEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  final pulumi.Input<String>? replicationSourceIdentifier;
  /// If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  final pulumi.Input<ClusterServerlessV2ScalingConfiguration>? serverlessV2ScalingConfiguration;
  /// Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;
  /// Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  final pulumi.Input<String>? snapshotIdentifier;
  /// Whether the Neptune cluster is encrypted. The default is `false` if not specified.
  final pulumi.Input<bool>? storageEncrypted;
  /// Storage type associated with the cluster `standard/iopt1`. Default: `standard`.
  final pulumi.Input<String>? storageType;
  /// Map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of VPC security groups to associate with the Cluster
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ClusterState].
  /// [allowMajorVersionUpgrade] Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engine_version` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  /// [applyImmediately] Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  /// [arn] Neptune Cluster ARN
  /// [availabilityZones] List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  /// [backupRetentionPeriod] Days to retain backups for. Default `1`
  /// [clusterIdentifier] Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [clusterMembers] List of Neptune Instances that are a part of this cluster
  /// [clusterResourceId] Neptune Cluster Resource ID
  /// [copyTagsToSnapshot] If set to true, tags are copied to any snapshot of the DB cluster that is created.
  /// [deletionProtection] Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  /// [enableCloudwatchLogsExports] List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  /// [endpoint] DNS address of the Neptune instance
  /// [engine] Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  /// [engineVersion] Database engine version.
  /// [finalSnapshotIdentifier] Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  /// [globalClusterIdentifier] Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  /// [hostedZoneId] Route53 Hosted Zone ID of the endpoint
  /// [iamDatabaseAuthenticationEnabled] Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  /// [iamRoles] List of ARNs for the IAM roles to associate to the Neptune Cluster.
  /// [kmsKeyArn] ARN for the KMS encryption key. When specifying `kms_key_arn`, `storage_encrypted` needs to be set to true.
  /// [neptuneClusterParameterGroupName] Cluster parameter group to associate with the cluster.
  /// [neptuneInstanceParameterGroupName] Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the `engine_version`.
  /// [neptuneSubnetGroupName] Neptune subnet group to associate with this Neptune instance.
  /// [port] Port on which the Neptune accepts connections. Default is `8182`.
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  /// [readerEndpoint] Read-only endpoint for the Neptune cluster, automatically load-balanced across replicas
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSourceIdentifier] ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  /// [serverlessV2ScalingConfiguration] If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  /// [skipFinalSnapshot] Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  /// [storageEncrypted] Whether the Neptune cluster is encrypted. The default is `false` if not specified.
  /// [storageType] Storage type associated with the cluster `standard/iopt1`. Default: `standard`.
  /// [tags] Map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Cluster
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
    this.copyTagsToSnapshot,
    this.deletionProtection,
    this.enableCloudwatchLogsExports,
    this.endpoint,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.hostedZoneId,
    this.iamDatabaseAuthenticationEnabled,
    this.iamRoles,
    this.kmsKeyArn,
    this.neptuneClusterParameterGroupName,
    this.neptuneInstanceParameterGroupName,
    this.neptuneSubnetGroupName,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.readerEndpoint,
    this.region,
    this.replicationSourceIdentifier,
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
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'deletionProtection': ?deletionProtection,
      'enableCloudwatchLogsExports': ?enableCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'hostedZoneId': ?hostedZoneId,
      'iamDatabaseAuthenticationEnabled': ?iamDatabaseAuthenticationEnabled,
      'iamRoles': ?iamRoles,
      'kmsKeyArn': ?kmsKeyArn,
      'neptuneClusterParameterGroupName': ?neptuneClusterParameterGroupName,
      'neptuneInstanceParameterGroupName': ?neptuneInstanceParameterGroupName,
      'neptuneSubnetGroupName': ?neptuneSubnetGroupName,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'readerEndpoint': ?readerEndpoint,
      'region': ?region,
      'replicationSourceIdentifier': ?replicationSourceIdentifier,
      'serverlessV2ScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterServerlessV2ScalingConfiguration, Map<String, dynamic>>(serverlessV2ScalingConfiguration, (value) => value.toMap()),
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
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : ((map['allowMajorVersionUpgrade'] as bool).input()).input(),
      applyImmediately: map['applyImmediately'] == null ? null : ((map['applyImmediately'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZones: map['availabilityZones'] == null ? null : (((map['availabilityZones'] as List).cast<String>()).input()).input(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : ((map['backupRetentionPeriod'] as int).input()).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : ((map['clusterIdentifier'] as String).input()).input(),
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null ? null : ((map['clusterIdentifierPrefix'] as String).input()).input(),
      clusterMembers: map['clusterMembers'] == null ? null : (((map['clusterMembers'] as List).cast<String>()).input()).input(),
      clusterResourceId: map['clusterResourceId'] == null ? null : ((map['clusterResourceId'] as String).input()).input(),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : ((map['copyTagsToSnapshot'] as bool).input()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : ((map['deletionProtection'] as bool).input()).input(),
      enableCloudwatchLogsExports: map['enableCloudwatchLogsExports'] == null ? null : (((map['enableCloudwatchLogsExports'] as List).cast<String>()).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : ((map['finalSnapshotIdentifier'] as String).input()).input(),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : ((map['globalClusterIdentifier'] as String).input()).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : ((map['hostedZoneId'] as String).input()).input(),
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] == null ? null : ((map['iamDatabaseAuthenticationEnabled'] as bool).input()).input(),
      iamRoles: map['iamRoles'] == null ? null : (((map['iamRoles'] as List).cast<String>()).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      neptuneClusterParameterGroupName: map['neptuneClusterParameterGroupName'] == null ? null : ((map['neptuneClusterParameterGroupName'] as String).input()).input(),
      neptuneInstanceParameterGroupName: map['neptuneInstanceParameterGroupName'] == null ? null : ((map['neptuneInstanceParameterGroupName'] as String).input()).input(),
      neptuneSubnetGroupName: map['neptuneSubnetGroupName'] == null ? null : ((map['neptuneSubnetGroupName'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : ((map['preferredBackupWindow'] as String).input()).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : ((map['preferredMaintenanceWindow'] as String).input()).input(),
      readerEndpoint: map['readerEndpoint'] == null ? null : ((map['readerEndpoint'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicationSourceIdentifier: map['replicationSourceIdentifier'] == null ? null : ((map['replicationSourceIdentifier'] as String).input()).input(),
      serverlessV2ScalingConfiguration: map['serverlessV2ScalingConfiguration'] == null ? null : ((ClusterServerlessV2ScalingConfiguration.fromMap((map['serverlessV2ScalingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : ((map['skipFinalSnapshot'] as bool).input()).input(),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : ((map['snapshotIdentifier'] as String).input()).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : ((map['storageEncrypted'] as bool).input()).input(),
      storageType: map['storageType'] == null ? null : ((map['storageType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : (((map['vpcSecurityGroupIds'] as List).cast<String>()).input()).input(),
    );
  }
}

