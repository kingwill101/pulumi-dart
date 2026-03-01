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
    pulumi.Output<bool>? allowMajorVersionUpgrade,
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? clusterIdentifierPrefix,
    pulumi.Output<List<String>>? clusterMembers,
    pulumi.Output<String>? clusterResourceId,
    pulumi.Output<bool>? copyTagsToSnapshot,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<List<String>>? enableCloudwatchLogsExports,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? finalSnapshotIdentifier,
    pulumi.Output<String>? globalClusterIdentifier,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<bool>? iamDatabaseAuthenticationEnabled,
    pulumi.Output<List<String>>? iamRoles,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? neptuneClusterParameterGroupName,
    pulumi.Output<String>? neptuneInstanceParameterGroupName,
    pulumi.Output<String>? neptuneSubnetGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<String>? readerEndpoint,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationSourceIdentifier,
    pulumi.Output<ClusterServerlessV2ScalingConfiguration>? serverlessV2ScalingConfiguration,
    pulumi.Output<bool>? skipFinalSnapshot,
    pulumi.Output<String>? snapshotIdentifier,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
  }) :
      allowMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      clusterIdentifierPrefix = pulumi.Input.asOptionalInput<String>(clusterIdentifierPrefix),
      clusterMembers = pulumi.Input.asOptionalInput<List<String>>(clusterMembers),
      clusterResourceId = pulumi.Input.asOptionalInput<String>(clusterResourceId),
      copyTagsToSnapshot = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enableCloudwatchLogsExports = pulumi.Input.asOptionalInput<List<String>>(enableCloudwatchLogsExports),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      finalSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
      globalClusterIdentifier = pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      iamDatabaseAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(iamDatabaseAuthenticationEnabled),
      iamRoles = pulumi.Input.asOptionalInput<List<String>>(iamRoles),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      neptuneClusterParameterGroupName = pulumi.Input.asOptionalInput<String>(neptuneClusterParameterGroupName),
      neptuneInstanceParameterGroupName = pulumi.Input.asOptionalInput<String>(neptuneInstanceParameterGroupName),
      neptuneSubnetGroupName = pulumi.Input.asOptionalInput<String>(neptuneSubnetGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      readerEndpoint = pulumi.Input.asOptionalInput<String>(readerEndpoint),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationSourceIdentifier = pulumi.Input.asOptionalInput<String>(replicationSourceIdentifier),
      serverlessV2ScalingConfiguration = pulumi.Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration>(serverlessV2ScalingConfiguration),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      snapshotIdentifier = pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

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
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['allowMajorVersionUpgrade'] as bool),
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifierPrefix'] as String),
      clusterMembers: map['clusterMembers'] == null ? null : pulumi.Output.create<List<String>>((map['clusterMembers'] as List).cast<String>()),
      clusterResourceId: map['clusterResourceId'] == null ? null : pulumi.Output.create<String>(map['clusterResourceId'] as String),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshot'] as bool),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      enableCloudwatchLogsExports: map['enableCloudwatchLogsExports'] == null ? null : pulumi.Output.create<List<String>>((map['enableCloudwatchLogsExports'] as List).cast<String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['finalSnapshotIdentifier'] as String),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['globalClusterIdentifier'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['iamDatabaseAuthenticationEnabled'] as bool),
      iamRoles: map['iamRoles'] == null ? null : pulumi.Output.create<List<String>>((map['iamRoles'] as List).cast<String>()),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      neptuneClusterParameterGroupName: map['neptuneClusterParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneClusterParameterGroupName'] as String),
      neptuneInstanceParameterGroupName: map['neptuneInstanceParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneInstanceParameterGroupName'] as String),
      neptuneSubnetGroupName: map['neptuneSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneSubnetGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      readerEndpoint: map['readerEndpoint'] == null ? null : pulumi.Output.create<String>(map['readerEndpoint'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationSourceIdentifier: map['replicationSourceIdentifier'] == null ? null : pulumi.Output.create<String>(map['replicationSourceIdentifier'] as String),
      serverlessV2ScalingConfiguration: map['serverlessV2ScalingConfiguration'] == null ? null : pulumi.Output.create<ClusterServerlessV2ScalingConfiguration>(ClusterServerlessV2ScalingConfiguration.fromMap((map['serverlessV2ScalingConfiguration'] as Map).cast<String, dynamic>())),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : pulumi.Output.create<bool>(map['skipFinalSnapshot'] as bool),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['snapshotIdentifier'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

