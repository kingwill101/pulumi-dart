// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration_neptune.dart';

/// The set of arguments for Cluster.
class ClusterNeptuneArgs {
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
  final pulumi.Input<ClusterServerlessV2ScalingConfigurationNeptune>?
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

  ClusterNeptuneArgs({
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.availabilityZones,
    this.backupRetentionPeriod,
    this.clusterIdentifier,
    this.clusterIdentifierPrefix,
    this.copyTagsToSnapshot,
    this.deletionProtection,
    this.enableCloudwatchLogsExports,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.iamDatabaseAuthenticationEnabled,
    this.iamRoles,
    this.kmsKeyArn,
    this.neptuneClusterParameterGroupName,
    this.neptuneInstanceParameterGroupName,
    this.neptuneSubnetGroupName,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    this.replicationSourceIdentifier,
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
                  ClusterServerlessV2ScalingConfigurationNeptune,
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

  factory ClusterNeptuneArgs.fromMap(Map<String, dynamic> map) {
    return ClusterNeptuneArgs(
      allowMajorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZones:
          pulumi.Input.asOptionalInput<List<String>>(map['availabilityZones']),
      backupRetentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      clusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifier']),
      clusterIdentifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifierPrefix']),
      copyTagsToSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      enableCloudwatchLogsExports: pulumi.Input.asOptionalInput<List<String>>(
          map['enableCloudwatchLogsExports']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      iamDatabaseAuthenticationEnabled: pulumi.Input.asOptionalInput<bool>(
          map['iamDatabaseAuthenticationEnabled']),
      iamRoles: pulumi.Input.asOptionalInput<List<String>>(map['iamRoles']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      neptuneClusterParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['neptuneClusterParameterGroupName']),
      neptuneInstanceParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['neptuneInstanceParameterGroupName']),
      neptuneSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['neptuneSubnetGroupName']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationSourceIdentifier: pulumi.Input.asOptionalInput<String>(
          map['replicationSourceIdentifier']),
      serverlessV2ScalingConfiguration: pulumi.Input.asOptionalInput<
              ClusterServerlessV2ScalingConfigurationNeptune>(
          map['serverlessV2ScalingConfiguration']),
      skipFinalSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['snapshotIdentifier']),
      storageEncrypted:
          pulumi.Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageType: pulumi.Input.asOptionalInput<String>(map['storageType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
