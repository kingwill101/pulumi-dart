// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_serverless_v2_scaling_configuration.dart';

/// {@template pulumi_neptune_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_neptune_cluster_cluster_args_doc}
class ClusterArgs {
  /// Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engine_version` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;

  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  final pulumi.Input<bool>? applyImmediately;

  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  final pulumi.Input<List<String>>? availabilityZones;

  /// Days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;

  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  final pulumi.Input<String>? clusterIdentifierPrefix;

  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  final pulumi.Input<bool>? copyTagsToSnapshot;

  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  final pulumi.Input<bool>? deletionProtection;

  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  final pulumi.Input<List<String>>? enableCloudwatchLogsExports;

  /// Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  final pulumi.Input<String>? engine;

  /// Database engine version.
  final pulumi.Input<String>? engineVersion;

  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  final pulumi.Input<String>? globalClusterIdentifier;

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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  final pulumi.Input<String>? replicationSourceIdentifier;

  /// If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  final pulumi.Input<ClusterServerlessV2ScalingConfiguration>?
      serverlessV2ScalingConfiguration;

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

  /// List of VPC security groups to associate with the Cluster
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ClusterArgs].
  /// [allowMajorVersionUpgrade] Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engine_version` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  /// [applyImmediately] Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  /// [availabilityZones] List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  /// [backupRetentionPeriod] Days to retain backups for. Default `1`
  /// [clusterIdentifier] Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [copyTagsToSnapshot] If set to true, tags are copied to any snapshot of the DB cluster that is created.
  /// [deletionProtection] Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  /// [enableCloudwatchLogsExports] List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  /// [engine] Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  /// [engineVersion] Database engine version.
  /// [finalSnapshotIdentifier] Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  /// [globalClusterIdentifier] Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  /// [iamDatabaseAuthenticationEnabled] Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  /// [iamRoles] List of ARNs for the IAM roles to associate to the Neptune Cluster.
  /// [kmsKeyArn] ARN for the KMS encryption key. When specifying `kms_key_arn`, `storage_encrypted` needs to be set to true.
  /// [neptuneClusterParameterGroupName] Cluster parameter group to associate with the cluster.
  /// [neptuneInstanceParameterGroupName] Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the `engine_version`.
  /// [neptuneSubnetGroupName] Neptune subnet group to associate with this Neptune instance.
  /// [port] Port on which the Neptune accepts connections. Default is `8182`.
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSourceIdentifier] ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  /// [serverlessV2ScalingConfiguration] If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  /// [skipFinalSnapshot] Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  /// [storageEncrypted] Whether the Neptune cluster is encrypted. The default is `false` if not specified.
  /// [storageType] Storage type associated with the cluster `standard/iopt1`. Default: `standard`.
  /// [tags] Map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Cluster
  ClusterArgs({
    bool? allowMajorVersionUpgrade,
    bool? applyImmediately,
    List<String>? availabilityZones,
    int? backupRetentionPeriod,
    String? clusterIdentifier,
    String? clusterIdentifierPrefix,
    bool? copyTagsToSnapshot,
    bool? deletionProtection,
    List<String>? enableCloudwatchLogsExports,
    String? engine,
    String? engineVersion,
    String? finalSnapshotIdentifier,
    String? globalClusterIdentifier,
    bool? iamDatabaseAuthenticationEnabled,
    List<String>? iamRoles,
    String? kmsKeyArn,
    String? neptuneClusterParameterGroupName,
    String? neptuneInstanceParameterGroupName,
    String? neptuneSubnetGroupName,
    int? port,
    String? preferredBackupWindow,
    String? preferredMaintenanceWindow,
    String? region,
    String? replicationSourceIdentifier,
    ClusterServerlessV2ScalingConfiguration? serverlessV2ScalingConfiguration,
    bool? skipFinalSnapshot,
    String? snapshotIdentifier,
    bool? storageEncrypted,
    String? storageType,
    Map<String, String>? tags,
    List<String>? vpcSecurityGroupIds,
  })  : allowMajorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
        applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
        availabilityZones =
            pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
        backupRetentionPeriod =
            pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
        clusterIdentifier =
            pulumi.Input.asOptionalInput<String>(clusterIdentifier),
        clusterIdentifierPrefix =
            pulumi.Input.asOptionalInput<String>(clusterIdentifierPrefix),
        copyTagsToSnapshot =
            pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        enableCloudwatchLogsExports =
            pulumi.Input.asOptionalInput<List<String>>(
                enableCloudwatchLogsExports),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        finalSnapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
        globalClusterIdentifier =
            pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
        iamDatabaseAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(
            iamDatabaseAuthenticationEnabled),
        iamRoles = pulumi.Input.asOptionalInput<List<String>>(iamRoles),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        neptuneClusterParameterGroupName = pulumi.Input.asOptionalInput<String>(
            neptuneClusterParameterGroupName),
        neptuneInstanceParameterGroupName =
            pulumi.Input.asOptionalInput<String>(
                neptuneInstanceParameterGroupName),
        neptuneSubnetGroupName =
            pulumi.Input.asOptionalInput<String>(neptuneSubnetGroupName),
        port = pulumi.Input.asOptionalInput<int>(port),
        preferredBackupWindow =
            pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
        preferredMaintenanceWindow =
            pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicationSourceIdentifier =
            pulumi.Input.asOptionalInput<String>(replicationSourceIdentifier),
        serverlessV2ScalingConfiguration = pulumi.Input.asOptionalInput<
                ClusterServerlessV2ScalingConfiguration>(
            serverlessV2ScalingConfiguration),
        skipFinalSnapshot =
            pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
        snapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
        storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
        storageType = pulumi.Input.asOptionalInput<String>(storageType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcSecurityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

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
    final copyTagsToSnapshotValue = copyTagsToSnapshot;
    if (copyTagsToSnapshotValue != null) {
      map['copyTagsToSnapshot'] = copyTagsToSnapshotValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final enableCloudwatchLogsExportsValue = enableCloudwatchLogsExports;
    if (enableCloudwatchLogsExportsValue != null) {
      map['enableCloudwatchLogsExports'] = enableCloudwatchLogsExportsValue;
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
    final iamDatabaseAuthenticationEnabledValue =
        iamDatabaseAuthenticationEnabled;
    if (iamDatabaseAuthenticationEnabledValue != null) {
      map['iamDatabaseAuthenticationEnabled'] =
          iamDatabaseAuthenticationEnabledValue;
    }
    final iamRolesValue = iamRoles;
    if (iamRolesValue != null) {
      map['iamRoles'] = iamRolesValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final neptuneClusterParameterGroupNameValue =
        neptuneClusterParameterGroupName;
    if (neptuneClusterParameterGroupNameValue != null) {
      map['neptuneClusterParameterGroupName'] =
          neptuneClusterParameterGroupNameValue;
    }
    final neptuneInstanceParameterGroupNameValue =
        neptuneInstanceParameterGroupName;
    if (neptuneInstanceParameterGroupNameValue != null) {
      map['neptuneInstanceParameterGroupName'] =
          neptuneInstanceParameterGroupNameValue;
    }
    final neptuneSubnetGroupNameValue = neptuneSubnetGroupName;
    if (neptuneSubnetGroupNameValue != null) {
      map['neptuneSubnetGroupName'] = neptuneSubnetGroupNameValue;
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
    final replicationSourceIdentifierValue = replicationSourceIdentifier;
    if (replicationSourceIdentifierValue != null) {
      map['replicationSourceIdentifier'] = replicationSourceIdentifierValue;
    }
    final serverlessV2ScalingConfigurationValue =
        serverlessV2ScalingConfiguration;
    if (serverlessV2ScalingConfigurationValue != null) {
      map['serverlessV2ScalingConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  ClusterServerlessV2ScalingConfiguration,
                  Map<String, dynamic>>(
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

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null
          ? null
          : map['allowMajorVersionUpgrade'] as bool,
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null
          ? null
          : map['backupRetentionPeriod'] as int,
      clusterIdentifier: map['clusterIdentifier'] == null
          ? null
          : map['clusterIdentifier'] as String,
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null
          ? null
          : map['clusterIdentifierPrefix'] as String,
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null
          ? null
          : map['copyTagsToSnapshot'] as bool,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      enableCloudwatchLogsExports: map['enableCloudwatchLogsExports'] == null
          ? null
          : (map['enableCloudwatchLogsExports'] as List).cast<String>(),
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null
          ? null
          : map['finalSnapshotIdentifier'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] == null
          ? null
          : map['globalClusterIdentifier'] as String,
      iamDatabaseAuthenticationEnabled:
          map['iamDatabaseAuthenticationEnabled'] == null
              ? null
              : map['iamDatabaseAuthenticationEnabled'] as bool,
      iamRoles: map['iamRoles'] == null
          ? null
          : (map['iamRoles'] as List).cast<String>(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      neptuneClusterParameterGroupName:
          map['neptuneClusterParameterGroupName'] == null
              ? null
              : map['neptuneClusterParameterGroupName'] as String,
      neptuneInstanceParameterGroupName:
          map['neptuneInstanceParameterGroupName'] == null
              ? null
              : map['neptuneInstanceParameterGroupName'] as String,
      neptuneSubnetGroupName: map['neptuneSubnetGroupName'] == null
          ? null
          : map['neptuneSubnetGroupName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredBackupWindow: map['preferredBackupWindow'] == null
          ? null
          : map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationSourceIdentifier: map['replicationSourceIdentifier'] == null
          ? null
          : map['replicationSourceIdentifier'] as String,
      serverlessV2ScalingConfiguration:
          map['serverlessV2ScalingConfiguration'] == null
              ? null
              : ClusterServerlessV2ScalingConfiguration.fromMap(
                  (map['serverlessV2ScalingConfiguration'] as Map)
                      .cast<String, dynamic>()),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null
          ? null
          : map['skipFinalSnapshot'] as bool,
      snapshotIdentifier: map['snapshotIdentifier'] == null
          ? null
          : map['snapshotIdentifier'] as String,
      storageEncrypted: map['storageEncrypted'] == null
          ? null
          : map['storageEncrypted'] as bool,
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
