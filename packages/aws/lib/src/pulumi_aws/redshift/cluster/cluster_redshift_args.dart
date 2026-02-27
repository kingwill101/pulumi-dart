// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Cluster.
class ClusterRedshiftArgs {
  /// If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is `true`.
  final pulumi.Input<bool>? allowVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  final pulumi.Input<bool>? applyImmediately;

  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// No longer supported by the AWS API.
  /// Always returns `auto`.
  final pulumi.Input<String>? aquaConfigurationStatus;

  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  final pulumi.Input<int>? automatedSnapshotRetentionPeriod;

  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if `availability_zone_relocation_enabled` is `true`.
  final pulumi.Input<String>? availabilityZone;

  /// If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is `false`. Available for use on clusters from the RA3 instance family.
  final pulumi.Input<bool>? availabilityZoneRelocationEnabled;

  /// The Cluster Identifier. Must be a lower case string.
  final pulumi.Input<String> clusterIdentifier;

  /// The name of the parameter group to be associated with this cluster.
  final pulumi.Input<String>? clusterParameterGroupName;

  /// The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  final pulumi.Input<String>? clusterSubnetGroupName;

  /// The cluster type to use. Either `single-node` or `multi-node`.
  final pulumi.Input<String>? clusterType;

  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// The version selected runs on all the nodes in the cluster.
  final pulumi.Input<String>? clusterVersion;

  /// The name of the first database to be created when the cluster is created.
  /// If you do not provide a name, Amazon Redshift will create a default database called `dev`.
  final pulumi.Input<String>? databaseName;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  final pulumi.Input<String>? defaultIamRoleArn;

  /// The Elastic IP (EIP) address for the cluster.
  final pulumi.Input<String>? elasticIp;

  /// If true , the data in the cluster is encrypted at rest.
  /// Default is `true`.
  final pulumi.Input<String>? encrypted;

  /// If true , enhanced VPC routing is enabled.
  final pulumi.Input<bool>? enhancedVpcRouting;

  /// The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be false.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  final pulumi.Input<List<String>>? iamRoles;

  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;

  /// The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is `current`.
  final pulumi.Input<String>? maintenanceTrackName;

  /// Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// Conflicts with `master_password` and `master_password_wo`.
  /// One of `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  final pulumi.Input<bool>? manageMasterPassword;

  /// The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and `3653`. Default value is `-1`.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;

  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password_wo`.
  /// One of `master_password`, `master_password_wo` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs, and it will be stored in the state file.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  final pulumi.Input<String>? masterPassword;

  /// ID of the KMS key used to encrypt the cluster admin credentials secret.
  final pulumi.Input<String>? masterPasswordSecretKmsKeyId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password`.
  /// One of `master_password_wo`, `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  final pulumi.Input<String>? masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  final pulumi.Input<int>? masterPasswordWoVersion;

  /// Username for the master DB user.
  final pulumi.Input<String>? masterUsername;

  /// Specifies if the Redshift cluster is multi-AZ.
  final pulumi.Input<bool>? multiAz;

  /// The node type to be provisioned for the cluster.
  final pulumi.Input<String> nodeType;

  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  final pulumi.Input<int>? numberOfNodes;

  /// The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  final pulumi.Input<String>? ownerAccount;

  /// The port number on which the cluster accepts incoming connections. Valid values are between `1115` and `65535`.
  /// The cluster is accessible only via the JDBC and ODBC connection strings.
  /// Part of the connection string requires the port on which the cluster will listen for incoming connections.
  /// Default port is `5439`.
  final pulumi.Input<int>? port;

  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// Format: ddd:hh24:mi-ddd:hh24:mi
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// If true, the cluster can be accessed from a public network. Default is `false`.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  final pulumi.Input<bool>? skipFinalSnapshot;

  /// The ARN of the snapshot from which to create the new cluster. Conflicts with `snapshot_identifier`.
  final pulumi.Input<String>? snapshotArn;

  /// The name of the cluster the source snapshot was created from.
  final pulumi.Input<String>? snapshotClusterIdentifier;

  /// The name of the snapshot from which to create the new cluster.  Conflicts with `snapshot_arn`.
  final pulumi.Input<String>? snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](http://docs.aws.amazon.com/cli/latest/reference/redshift/index.html#cli-aws-redshift).
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  ClusterRedshiftArgs({
    this.allowVersionUpgrade,
    this.applyImmediately,
    this.aquaConfigurationStatus,
    this.automatedSnapshotRetentionPeriod,
    this.availabilityZone,
    this.availabilityZoneRelocationEnabled,
    required this.clusterIdentifier,
    this.clusterParameterGroupName,
    this.clusterSubnetGroupName,
    this.clusterType,
    this.clusterVersion,
    this.databaseName,
    this.defaultIamRoleArn,
    this.elasticIp,
    this.encrypted,
    this.enhancedVpcRouting,
    this.finalSnapshotIdentifier,
    this.iamRoles,
    this.kmsKeyId,
    this.maintenanceTrackName,
    this.manageMasterPassword,
    this.manualSnapshotRetentionPeriod,
    this.masterPassword,
    this.masterPasswordSecretKmsKeyId,
    this.masterPasswordWo,
    this.masterPasswordWoVersion,
    this.masterUsername,
    this.multiAz,
    required this.nodeType,
    this.numberOfNodes,
    this.ownerAccount,
    this.port,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.skipFinalSnapshot,
    this.snapshotArn,
    this.snapshotClusterIdentifier,
    this.snapshotIdentifier,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowVersionUpgradeValue = allowVersionUpgrade;
    if (allowVersionUpgradeValue != null) {
      map['allowVersionUpgrade'] = allowVersionUpgradeValue;
    }
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final aquaConfigurationStatusValue = aquaConfigurationStatus;
    if (aquaConfigurationStatusValue != null) {
      map['aquaConfigurationStatus'] = aquaConfigurationStatusValue;
    }
    final automatedSnapshotRetentionPeriodValue =
        automatedSnapshotRetentionPeriod;
    if (automatedSnapshotRetentionPeriodValue != null) {
      map['automatedSnapshotRetentionPeriod'] =
          automatedSnapshotRetentionPeriodValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneRelocationEnabledValue =
        availabilityZoneRelocationEnabled;
    if (availabilityZoneRelocationEnabledValue != null) {
      map['availabilityZoneRelocationEnabled'] =
          availabilityZoneRelocationEnabledValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final clusterParameterGroupNameValue = clusterParameterGroupName;
    if (clusterParameterGroupNameValue != null) {
      map['clusterParameterGroupName'] = clusterParameterGroupNameValue;
    }
    final clusterSubnetGroupNameValue = clusterSubnetGroupName;
    if (clusterSubnetGroupNameValue != null) {
      map['clusterSubnetGroupName'] = clusterSubnetGroupNameValue;
    }
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue;
    }
    final clusterVersionValue = clusterVersion;
    if (clusterVersionValue != null) {
      map['clusterVersion'] = clusterVersionValue;
    }
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final defaultIamRoleArnValue = defaultIamRoleArn;
    if (defaultIamRoleArnValue != null) {
      map['defaultIamRoleArn'] = defaultIamRoleArnValue;
    }
    final elasticIpValue = elasticIp;
    if (elasticIpValue != null) {
      map['elasticIp'] = elasticIpValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final enhancedVpcRoutingValue = enhancedVpcRouting;
    if (enhancedVpcRoutingValue != null) {
      map['enhancedVpcRouting'] = enhancedVpcRoutingValue;
    }
    final finalSnapshotIdentifierValue = finalSnapshotIdentifier;
    if (finalSnapshotIdentifierValue != null) {
      map['finalSnapshotIdentifier'] = finalSnapshotIdentifierValue;
    }
    final iamRolesValue = iamRoles;
    if (iamRolesValue != null) {
      map['iamRoles'] = iamRolesValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final maintenanceTrackNameValue = maintenanceTrackName;
    if (maintenanceTrackNameValue != null) {
      map['maintenanceTrackName'] = maintenanceTrackNameValue;
    }
    final manageMasterPasswordValue = manageMasterPassword;
    if (manageMasterPasswordValue != null) {
      map['manageMasterPassword'] = manageMasterPasswordValue;
    }
    final manualSnapshotRetentionPeriodValue = manualSnapshotRetentionPeriod;
    if (manualSnapshotRetentionPeriodValue != null) {
      map['manualSnapshotRetentionPeriod'] = manualSnapshotRetentionPeriodValue;
    }
    final masterPasswordValue = masterPassword;
    if (masterPasswordValue != null) {
      map['masterPassword'] = masterPasswordValue;
    }
    final masterPasswordSecretKmsKeyIdValue = masterPasswordSecretKmsKeyId;
    if (masterPasswordSecretKmsKeyIdValue != null) {
      map['masterPasswordSecretKmsKeyId'] = masterPasswordSecretKmsKeyIdValue;
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
    final multiAzValue = multiAz;
    if (multiAzValue != null) {
      map['multiAz'] = multiAzValue;
    }
    map['nodeType'] = nodeType;
    final numberOfNodesValue = numberOfNodes;
    if (numberOfNodesValue != null) {
      map['numberOfNodes'] = numberOfNodesValue;
    }
    final ownerAccountValue = ownerAccount;
    if (ownerAccountValue != null) {
      map['ownerAccount'] = ownerAccountValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
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
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final snapshotArnValue = snapshotArn;
    if (snapshotArnValue != null) {
      map['snapshotArn'] = snapshotArnValue;
    }
    final snapshotClusterIdentifierValue = snapshotClusterIdentifier;
    if (snapshotClusterIdentifierValue != null) {
      map['snapshotClusterIdentifier'] = snapshotClusterIdentifierValue;
    }
    final snapshotIdentifierValue = snapshotIdentifier;
    if (snapshotIdentifierValue != null) {
      map['snapshotIdentifier'] = snapshotIdentifierValue;
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

  factory ClusterRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRedshiftArgs(
      allowVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['allowVersionUpgrade']),
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      aquaConfigurationStatus:
          pulumi.Input.asOptionalInput<String>(map['aquaConfigurationStatus']),
      automatedSnapshotRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['automatedSnapshotRetentionPeriod']),
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneRelocationEnabled: pulumi.Input.asOptionalInput<bool>(
          map['availabilityZoneRelocationEnabled']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      clusterParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['clusterParameterGroupName']),
      clusterSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['clusterSubnetGroupName']),
      clusterType: pulumi.Input.asOptionalInput<String>(map['clusterType']),
      clusterVersion:
          pulumi.Input.asOptionalInput<String>(map['clusterVersion']),
      databaseName: pulumi.Input.asOptionalInput<String>(map['databaseName']),
      defaultIamRoleArn:
          pulumi.Input.asOptionalInput<String>(map['defaultIamRoleArn']),
      elasticIp: pulumi.Input.asOptionalInput<String>(map['elasticIp']),
      encrypted: pulumi.Input.asOptionalInput<String>(map['encrypted']),
      enhancedVpcRouting:
          pulumi.Input.asOptionalInput<bool>(map['enhancedVpcRouting']),
      finalSnapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      iamRoles: pulumi.Input.asOptionalInput<List<String>>(map['iamRoles']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      maintenanceTrackName:
          pulumi.Input.asOptionalInput<String>(map['maintenanceTrackName']),
      manageMasterPassword:
          pulumi.Input.asOptionalInput<bool>(map['manageMasterPassword']),
      manualSnapshotRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['manualSnapshotRetentionPeriod']),
      masterPassword:
          pulumi.Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordSecretKmsKeyId: pulumi.Input.asOptionalInput<String>(
          map['masterPasswordSecretKmsKeyId']),
      masterPasswordWo:
          pulumi.Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          pulumi.Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUsername:
          pulumi.Input.asOptionalInput<String>(map['masterUsername']),
      multiAz: pulumi.Input.asOptionalInput<bool>(map['multiAz']),
      nodeType: pulumi.Input.asInput<String>(map['nodeType']),
      numberOfNodes: pulumi.Input.asOptionalInput<int>(map['numberOfNodes']),
      ownerAccount: pulumi.Input.asOptionalInput<String>(map['ownerAccount']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipFinalSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotArn: pulumi.Input.asOptionalInput<String>(map['snapshotArn']),
      snapshotClusterIdentifier: pulumi.Input.asOptionalInput<String>(
          map['snapshotClusterIdentifier']),
      snapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['snapshotIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
