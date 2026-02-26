// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration2.dart';

/// The set of arguments for Cluster.
class ClusterArgs11 {
  /// Whether upgrades between different major versions are allowed. You must set it to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> when providing an <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> parameter that uses a different major version than the DB cluster's current version. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? allowMajorVersionUpgrade;

  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  final Input<List<String>>? availabilityZones;

  /// Days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  final Input<int>? backupRetentionPeriod;

  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  final Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  final Input<String>? clusterIdentifierPrefix;

  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  final Input<bool>? copyTagsToSnapshot;

  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  final Input<bool>? deletionProtection;

  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span> and <span pulumi-lang-nodejs="`slowquery`" pulumi-lang-dotnet="`Slowquery`" pulumi-lang-go="`slowquery`" pulumi-lang-python="`slowquery`" pulumi-lang-yaml="`slowquery`" pulumi-lang-java="`slowquery`">`slowquery`</span>.
  final Input<List<String>>? enableCloudwatchLogsExports;

  /// Name of the database engine to be used for this Neptune cluster. Defaults to <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>.
  final Input<String>? engine;

  /// Database engine version.
  final Input<String>? engineVersion;

  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotIdentifier;

  /// Global cluster identifier specified on <span pulumi-lang-nodejs="`aws.neptune.GlobalCluster`" pulumi-lang-dotnet="`aws.neptune.GlobalCluster`" pulumi-lang-go="`neptune.GlobalCluster`" pulumi-lang-python="`neptune.GlobalCluster`" pulumi-lang-yaml="`aws.neptune.GlobalCluster`" pulumi-lang-java="`aws.neptune.GlobalCluster`">`aws.neptune.GlobalCluster`</span>.
  final Input<String>? globalClusterIdentifier;

  /// Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  final Input<bool>? iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the Neptune Cluster.
  final Input<List<String>>? iamRoles;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  final Input<String>? kmsKeyArn;

  /// Cluster parameter group to associate with the cluster.
  final Input<String>? neptuneClusterParameterGroupName;

  /// Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>.
  final Input<String>? neptuneInstanceParameterGroupName;

  /// Neptune subnet group to associate with this Neptune instance.
  final Input<String>? neptuneSubnetGroupName;

  /// Port on which the Neptune accepts connections. Default is <span pulumi-lang-nodejs="`8182`" pulumi-lang-dotnet="`8182`" pulumi-lang-go="`8182`" pulumi-lang-python="`8182`" pulumi-lang-yaml="`8182`" pulumi-lang-java="`8182`">`8182`</span>.
  final Input<int>? port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  final Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  final Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  final Input<String>? replicationSourceIdentifier;

  /// If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  final Input<ClusterServerlessV2ScalingConfiguration2>?
      serverlessV2ScalingConfiguration;

  /// Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipFinalSnapshot;

  /// Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  final Input<String>? snapshotIdentifier;

  /// Whether the Neptune cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not specified.
  final Input<bool>? storageEncrypted;

  /// Storage type associated with the cluster `standard/iopt1`. Default: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final Input<String>? storageType;

  /// Map of tags to assign to the Neptune cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// List of VPC security groups to associate with the Cluster
  final Input<List<String>>? vpcSecurityGroupIds;

  ClusterArgs11({
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
      map['serverlessV2ScalingConfiguration'] = Input.mapOptionalInputValue<
              ClusterServerlessV2ScalingConfiguration2, Map<String, dynamic>>(
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

  factory ClusterArgs11.fromMap(Map<String, dynamic> map) {
    return ClusterArgs11(
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
      copyTagsToSnapshot:
          Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      enableCloudwatchLogsExports: Input.asOptionalInput<List<String>>(
          map['enableCloudwatchLogsExports']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      iamDatabaseAuthenticationEnabled:
          Input.asOptionalInput<bool>(map['iamDatabaseAuthenticationEnabled']),
      iamRoles: Input.asOptionalInput<List<String>>(map['iamRoles']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      neptuneClusterParameterGroupName: Input.asOptionalInput<String>(
          map['neptuneClusterParameterGroupName']),
      neptuneInstanceParameterGroupName: Input.asOptionalInput<String>(
          map['neptuneInstanceParameterGroupName']),
      neptuneSubnetGroupName:
          Input.asOptionalInput<String>(map['neptuneSubnetGroupName']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationSourceIdentifier:
          Input.asOptionalInput<String>(map['replicationSourceIdentifier']),
      serverlessV2ScalingConfiguration:
          Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration2>(
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
