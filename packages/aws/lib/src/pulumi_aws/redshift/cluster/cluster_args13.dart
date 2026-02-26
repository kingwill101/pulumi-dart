// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Cluster.
class ClusterArgs13 {
  /// If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? allowVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// No longer supported by the AWS API.
  /// Always returns <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span>.
  final Input<String>? aquaConfigurationStatus;

  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  final Input<int>? automatedSnapshotRetentionPeriod;

  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if <span pulumi-lang-nodejs="`availabilityZoneRelocationEnabled`" pulumi-lang-dotnet="`AvailabilityZoneRelocationEnabled`" pulumi-lang-go="`availabilityZoneRelocationEnabled`" pulumi-lang-python="`availability_zone_relocation_enabled`" pulumi-lang-yaml="`availabilityZoneRelocationEnabled`" pulumi-lang-java="`availabilityZoneRelocationEnabled`">`availability_zone_relocation_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? availabilityZone;

  /// If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Available for use on clusters from the RA3 instance family.
  final Input<bool>? availabilityZoneRelocationEnabled;

  /// The Cluster Identifier. Must be a lower case string.
  final Input<String> clusterIdentifier;

  /// The name of the parameter group to be associated with this cluster.
  final Input<String>? clusterParameterGroupName;

  /// The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  final Input<String>? clusterSubnetGroupName;

  /// The cluster type to use. Either `single-node` or `multi-node`.
  final Input<String>? clusterType;

  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// The version selected runs on all the nodes in the cluster.
  final Input<String>? clusterVersion;

  /// The name of the first database to be created when the cluster is created.
  /// If you do not provide a name, Amazon Redshift will create a default database called <span pulumi-lang-nodejs="`dev`" pulumi-lang-dotnet="`Dev`" pulumi-lang-go="`dev`" pulumi-lang-python="`dev`" pulumi-lang-yaml="`dev`" pulumi-lang-java="`dev`">`dev`</span>.
  final Input<String>? databaseName;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  final Input<String>? defaultIamRoleArn;

  /// The Elastic IP (EIP) address for the cluster.
  final Input<String>? elasticIp;

  /// If true , the data in the cluster is encrypted at rest.
  /// Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? encrypted;

  /// If true , enhanced VPC routing is enabled.
  final Input<bool>? enhancedVpcRouting;

  /// The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, <span pulumi-lang-nodejs="`skipFinalSnapshot`" pulumi-lang-dotnet="`SkipFinalSnapshot`" pulumi-lang-go="`skipFinalSnapshot`" pulumi-lang-python="`skip_final_snapshot`" pulumi-lang-yaml="`skipFinalSnapshot`" pulumi-lang-java="`skipFinalSnapshot`">`skip_final_snapshot`</span> must be false.
  final Input<String>? finalSnapshotIdentifier;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  final Input<List<String>>? iamRoles;

  /// The ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> needs to be set to true.
  final Input<String>? kmsKeyId;

  /// The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is <span pulumi-lang-nodejs="`current`" pulumi-lang-dotnet="`Current`" pulumi-lang-go="`current`" pulumi-lang-python="`current`" pulumi-lang-yaml="`current`" pulumi-lang-java="`current`">`current`</span>.
  final Input<String>? maintenanceTrackName;

  /// Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// Conflicts with <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> and <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  final Input<bool>? manageMasterPassword;

  /// The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and <span pulumi-lang-nodejs="`3653`" pulumi-lang-dotnet="`3653`" pulumi-lang-go="`3653`" pulumi-lang-python="`3653`" pulumi-lang-yaml="`3653`" pulumi-lang-java="`3653`">`3653`</span>. Default value is `-1`.
  final Input<int>? manualSnapshotRetentionPeriod;

  /// Password for the master DB user.
  /// Conflicts with <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> and <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span>, <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  /// Note that this may show up in logs, and it will be stored in the state file.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  final Input<String>? masterPassword;

  /// ID of the KMS key used to encrypt the cluster admin credentials secret.
  final Input<String>? masterPasswordSecretKmsKeyId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user.
  /// Conflicts with <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> and <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>, <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  /// Note that this may show up in logs.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  final Input<String>? masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  final Input<int>? masterPasswordWoVersion;

  /// Username for the master DB user.
  final Input<String>? masterUsername;

  /// Specifies if the Redshift cluster is multi-AZ.
  final Input<bool>? multiAz;

  /// The node type to be provisioned for the cluster.
  final Input<String> nodeType;

  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  final Input<int>? numberOfNodes;

  /// The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  final Input<String>? ownerAccount;

  /// The port number on which the cluster accepts incoming connections. Valid values are between <span pulumi-lang-nodejs="`1115`" pulumi-lang-dotnet="`1115`" pulumi-lang-go="`1115`" pulumi-lang-python="`1115`" pulumi-lang-yaml="`1115`" pulumi-lang-java="`1115`">`1115`</span> and <span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span>.
  /// The cluster is accessible only via the JDBC and ODBC connection strings.
  /// Part of the connection string requires the port on which the cluster will listen for incoming connections.
  /// Default port is <span pulumi-lang-nodejs="`5439`" pulumi-lang-dotnet="`5439`" pulumi-lang-go="`5439`" pulumi-lang-python="`5439`" pulumi-lang-yaml="`5439`" pulumi-lang-java="`5439`">`5439`</span>.
  final Input<int>? port;

  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// Format: ddd:hh24:mi-ddd:hh24:mi
  final Input<String>? preferredMaintenanceWindow;

  /// If true, the cluster can be accessed from a public network. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  final Input<bool>? skipFinalSnapshot;

  /// The ARN of the snapshot from which to create the new cluster. Conflicts with <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>.
  final Input<String>? snapshotArn;

  /// The name of the cluster the source snapshot was created from.
  final Input<String>? snapshotClusterIdentifier;

  /// The name of the snapshot from which to create the new cluster.  Conflicts with <span pulumi-lang-nodejs="`snapshotArn`" pulumi-lang-dotnet="`SnapshotArn`" pulumi-lang-go="`snapshotArn`" pulumi-lang-python="`snapshot_arn`" pulumi-lang-yaml="`snapshotArn`" pulumi-lang-java="`snapshotArn`">`snapshot_arn`</span>.
  final Input<String>? snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](http://docs.aws.amazon.com/cli/latest/reference/redshift/index.html#cli-aws-redshift).
  final Input<Map<String, String>>? tags;

  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  final Input<List<String>>? vpcSecurityGroupIds;

  ClusterArgs13({
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

  factory ClusterArgs13.fromMap(Map<String, dynamic> map) {
    return ClusterArgs13(
      allowVersionUpgrade:
          Input.asOptionalInput<bool>(map['allowVersionUpgrade']),
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      aquaConfigurationStatus:
          Input.asOptionalInput<String>(map['aquaConfigurationStatus']),
      automatedSnapshotRetentionPeriod:
          Input.asOptionalInput<int>(map['automatedSnapshotRetentionPeriod']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneRelocationEnabled:
          Input.asOptionalInput<bool>(map['availabilityZoneRelocationEnabled']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      clusterParameterGroupName:
          Input.asOptionalInput<String>(map['clusterParameterGroupName']),
      clusterSubnetGroupName:
          Input.asOptionalInput<String>(map['clusterSubnetGroupName']),
      clusterType: Input.asOptionalInput<String>(map['clusterType']),
      clusterVersion: Input.asOptionalInput<String>(map['clusterVersion']),
      databaseName: Input.asOptionalInput<String>(map['databaseName']),
      defaultIamRoleArn:
          Input.asOptionalInput<String>(map['defaultIamRoleArn']),
      elasticIp: Input.asOptionalInput<String>(map['elasticIp']),
      encrypted: Input.asOptionalInput<String>(map['encrypted']),
      enhancedVpcRouting:
          Input.asOptionalInput<bool>(map['enhancedVpcRouting']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      iamRoles: Input.asOptionalInput<List<String>>(map['iamRoles']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      maintenanceTrackName:
          Input.asOptionalInput<String>(map['maintenanceTrackName']),
      manageMasterPassword:
          Input.asOptionalInput<bool>(map['manageMasterPassword']),
      manualSnapshotRetentionPeriod:
          Input.asOptionalInput<int>(map['manualSnapshotRetentionPeriod']),
      masterPassword: Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordSecretKmsKeyId:
          Input.asOptionalInput<String>(map['masterPasswordSecretKmsKeyId']),
      masterPasswordWo: Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUsername: Input.asOptionalInput<String>(map['masterUsername']),
      multiAz: Input.asOptionalInput<bool>(map['multiAz']),
      nodeType: Input.asInput<String>(map['nodeType']),
      numberOfNodes: Input.asOptionalInput<int>(map['numberOfNodes']),
      ownerAccount: Input.asOptionalInput<String>(map['ownerAccount']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotArn: Input.asOptionalInput<String>(map['snapshotArn']),
      snapshotClusterIdentifier:
          Input.asOptionalInput<String>(map['snapshotClusterIdentifier']),
      snapshotIdentifier:
          Input.asOptionalInput<String>(map['snapshotIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
