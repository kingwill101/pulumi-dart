// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_redshift_cluster_cluster_args_doc}
class ClusterArgs {
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

  /// Creates a new [ClusterArgs].
  /// [allowVersionUpgrade] If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is `true`.
  /// [applyImmediately] Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  /// [aquaConfigurationStatus] The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// [automatedSnapshotRetentionPeriod] The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  /// [availabilityZone] The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if `availability_zone_relocation_enabled` is `true`.
  /// [availabilityZoneRelocationEnabled] If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is `false`. Available for use on clusters from the RA3 instance family.
  /// [clusterIdentifier] The Cluster Identifier. Must be a lower case string.
  /// [clusterParameterGroupName] The name of the parameter group to be associated with this cluster.
  /// [clusterSubnetGroupName] The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  /// [clusterType] The cluster type to use. Either `single-node` or `multi-node`.
  /// [clusterVersion] The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// [databaseName] The name of the first database to be created when the cluster is created.
  /// [defaultIamRoleArn] The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  /// [elasticIp] The Elastic IP (EIP) address for the cluster.
  /// [encrypted] If true , the data in the cluster is encrypted at rest.
  /// [enhancedVpcRouting] If true , enhanced VPC routing is enabled.
  /// [finalSnapshotIdentifier] The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be false.
  /// [iamRoles] A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true.
  /// [maintenanceTrackName] The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is `current`.
  /// [manageMasterPassword] Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// [manualSnapshotRetentionPeriod] The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and `3653`. Default value is `-1`.
  /// [masterPassword] Password for the master DB user.
  /// [masterPasswordSecretKmsKeyId] ID of the KMS key used to encrypt the cluster admin credentials secret.
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  /// [masterUsername] Username for the master DB user.
  /// [multiAz] Specifies if the Redshift cluster is multi-AZ.
  /// [nodeType] The node type to be provisioned for the cluster.
  /// [numberOfNodes] The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  /// [ownerAccount] The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  /// [port] The port number on which the cluster accepts incoming connections. Valid values are between `1115` and `65535`.
  /// [preferredMaintenanceWindow] The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// [publiclyAccessible] If true, the cluster can be accessed from a public network. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipFinalSnapshot] Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  /// [snapshotArn] The ARN of the snapshot from which to create the new cluster. Conflicts with `snapshot_identifier`.
  /// [snapshotClusterIdentifier] The name of the cluster the source snapshot was created from.
  /// [snapshotIdentifier] The name of the snapshot from which to create the new cluster.  Conflicts with `snapshot_arn`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  ClusterArgs({
    bool? allowVersionUpgrade,
    bool? applyImmediately,
    String? aquaConfigurationStatus,
    int? automatedSnapshotRetentionPeriod,
    String? availabilityZone,
    bool? availabilityZoneRelocationEnabled,
    required String clusterIdentifier,
    String? clusterParameterGroupName,
    String? clusterSubnetGroupName,
    String? clusterType,
    String? clusterVersion,
    String? databaseName,
    String? defaultIamRoleArn,
    String? elasticIp,
    String? encrypted,
    bool? enhancedVpcRouting,
    String? finalSnapshotIdentifier,
    List<String>? iamRoles,
    String? kmsKeyId,
    String? maintenanceTrackName,
    bool? manageMasterPassword,
    int? manualSnapshotRetentionPeriod,
    String? masterPassword,
    String? masterPasswordSecretKmsKeyId,
    String? masterPasswordWo,
    int? masterPasswordWoVersion,
    String? masterUsername,
    bool? multiAz,
    required String nodeType,
    int? numberOfNodes,
    String? ownerAccount,
    int? port,
    String? preferredMaintenanceWindow,
    bool? publiclyAccessible,
    String? region,
    bool? skipFinalSnapshot,
    String? snapshotArn,
    String? snapshotClusterIdentifier,
    String? snapshotIdentifier,
    Map<String, String>? tags,
    List<String>? vpcSecurityGroupIds,
  }) : allowVersionUpgrade = pulumi.Input.asOptionalInput<bool>(
         allowVersionUpgrade,
       ),
       applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
       aquaConfigurationStatus = pulumi.Input.asOptionalInput<String>(
         aquaConfigurationStatus,
       ),
       automatedSnapshotRetentionPeriod = pulumi.Input.asOptionalInput<int>(
         automatedSnapshotRetentionPeriod,
       ),
       availabilityZone = pulumi.Input.asOptionalInput<String>(
         availabilityZone,
       ),
       availabilityZoneRelocationEnabled = pulumi.Input.asOptionalInput<bool>(
         availabilityZoneRelocationEnabled,
       ),
       clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
       clusterParameterGroupName = pulumi.Input.asOptionalInput<String>(
         clusterParameterGroupName,
       ),
       clusterSubnetGroupName = pulumi.Input.asOptionalInput<String>(
         clusterSubnetGroupName,
       ),
       clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
       clusterVersion = pulumi.Input.asOptionalInput<String>(clusterVersion),
       databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
       defaultIamRoleArn = pulumi.Input.asOptionalInput<String>(
         defaultIamRoleArn,
       ),
       elasticIp = pulumi.Input.asOptionalInput<String>(elasticIp),
       encrypted = pulumi.Input.asOptionalInput<String>(encrypted),
       enhancedVpcRouting = pulumi.Input.asOptionalInput<bool>(
         enhancedVpcRouting,
       ),
       finalSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(
         finalSnapshotIdentifier,
       ),
       iamRoles = pulumi.Input.asOptionalInput<List<String>>(iamRoles),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       maintenanceTrackName = pulumi.Input.asOptionalInput<String>(
         maintenanceTrackName,
       ),
       manageMasterPassword = pulumi.Input.asOptionalInput<bool>(
         manageMasterPassword,
       ),
       manualSnapshotRetentionPeriod = pulumi.Input.asOptionalInput<int>(
         manualSnapshotRetentionPeriod,
       ),
       masterPassword = pulumi.Input.asOptionalInput<String>(masterPassword),
       masterPasswordSecretKmsKeyId = pulumi.Input.asOptionalInput<String>(
         masterPasswordSecretKmsKeyId,
       ),
       masterPasswordWo = pulumi.Input.asOptionalInput<String>(
         masterPasswordWo,
       ),
       masterPasswordWoVersion = pulumi.Input.asOptionalInput<int>(
         masterPasswordWoVersion,
       ),
       masterUsername = pulumi.Input.asOptionalInput<String>(masterUsername),
       multiAz = pulumi.Input.asOptionalInput<bool>(multiAz),
       nodeType = pulumi.Input.asInput<String>(nodeType),
       numberOfNodes = pulumi.Input.asOptionalInput<int>(numberOfNodes),
       ownerAccount = pulumi.Input.asOptionalInput<String>(ownerAccount),
       port = pulumi.Input.asOptionalInput<int>(port),
       preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(
         preferredMaintenanceWindow,
       ),
       publiclyAccessible = pulumi.Input.asOptionalInput<bool>(
         publiclyAccessible,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(
         skipFinalSnapshot,
       ),
       snapshotArn = pulumi.Input.asOptionalInput<String>(snapshotArn),
       snapshotClusterIdentifier = pulumi.Input.asOptionalInput<String>(
         snapshotClusterIdentifier,
       ),
       snapshotIdentifier = pulumi.Input.asOptionalInput<String>(
         snapshotIdentifier,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         vpcSecurityGroupIds,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVersionUpgrade': ?allowVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'aquaConfigurationStatus': ?aquaConfigurationStatus,
      'automatedSnapshotRetentionPeriod': ?automatedSnapshotRetentionPeriod,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneRelocationEnabled': ?availabilityZoneRelocationEnabled,
      'clusterIdentifier': clusterIdentifier,
      'clusterParameterGroupName': ?clusterParameterGroupName,
      'clusterSubnetGroupName': ?clusterSubnetGroupName,
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'databaseName': ?databaseName,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'elasticIp': ?elasticIp,
      'encrypted': ?encrypted,
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'iamRoles': ?iamRoles,
      'kmsKeyId': ?kmsKeyId,
      'maintenanceTrackName': ?maintenanceTrackName,
      'manageMasterPassword': ?manageMasterPassword,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'masterPassword': ?masterPassword,
      'masterPasswordSecretKmsKeyId': ?masterPasswordSecretKmsKeyId,
      'masterPasswordWo': ?masterPasswordWo,
      'masterPasswordWoVersion': ?masterPasswordWoVersion,
      'masterUsername': ?masterUsername,
      'multiAz': ?multiAz,
      'nodeType': nodeType,
      'numberOfNodes': ?numberOfNodes,
      'ownerAccount': ?ownerAccount,
      'port': ?port,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotArn': ?snapshotArn,
      'snapshotClusterIdentifier': ?snapshotClusterIdentifier,
      'snapshotIdentifier': ?snapshotIdentifier,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allowVersionUpgrade: map['allowVersionUpgrade'] == null
          ? null
          : map['allowVersionUpgrade'] as bool,
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      aquaConfigurationStatus: map['aquaConfigurationStatus'] == null
          ? null
          : map['aquaConfigurationStatus'] as String,
      automatedSnapshotRetentionPeriod:
          map['automatedSnapshotRetentionPeriod'] == null
          ? null
          : map['automatedSnapshotRetentionPeriod'] as int,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      availabilityZoneRelocationEnabled:
          map['availabilityZoneRelocationEnabled'] == null
          ? null
          : map['availabilityZoneRelocationEnabled'] as bool,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterParameterGroupName: map['clusterParameterGroupName'] == null
          ? null
          : map['clusterParameterGroupName'] as String,
      clusterSubnetGroupName: map['clusterSubnetGroupName'] == null
          ? null
          : map['clusterSubnetGroupName'] as String,
      clusterType: map['clusterType'] == null
          ? null
          : map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] == null
          ? null
          : map['clusterVersion'] as String,
      databaseName: map['databaseName'] == null
          ? null
          : map['databaseName'] as String,
      defaultIamRoleArn: map['defaultIamRoleArn'] == null
          ? null
          : map['defaultIamRoleArn'] as String,
      elasticIp: map['elasticIp'] == null ? null : map['elasticIp'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      enhancedVpcRouting: map['enhancedVpcRouting'] == null
          ? null
          : map['enhancedVpcRouting'] as bool,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null
          ? null
          : map['finalSnapshotIdentifier'] as String,
      iamRoles: map['iamRoles'] == null
          ? null
          : (map['iamRoles'] as List).cast<String>(),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      maintenanceTrackName: map['maintenanceTrackName'] == null
          ? null
          : map['maintenanceTrackName'] as String,
      manageMasterPassword: map['manageMasterPassword'] == null
          ? null
          : map['manageMasterPassword'] as bool,
      manualSnapshotRetentionPeriod:
          map['manualSnapshotRetentionPeriod'] == null
          ? null
          : map['manualSnapshotRetentionPeriod'] as int,
      masterPassword: map['masterPassword'] == null
          ? null
          : map['masterPassword'] as String,
      masterPasswordSecretKmsKeyId: map['masterPasswordSecretKmsKeyId'] == null
          ? null
          : map['masterPasswordSecretKmsKeyId'] as String,
      masterPasswordWo: map['masterPasswordWo'] == null
          ? null
          : map['masterPasswordWo'] as String,
      masterPasswordWoVersion: map['masterPasswordWoVersion'] == null
          ? null
          : map['masterPasswordWoVersion'] as int,
      masterUsername: map['masterUsername'] == null
          ? null
          : map['masterUsername'] as String,
      multiAz: map['multiAz'] == null ? null : map['multiAz'] as bool,
      nodeType: map['nodeType'] as String,
      numberOfNodes: map['numberOfNodes'] == null
          ? null
          : map['numberOfNodes'] as int,
      ownerAccount: map['ownerAccount'] == null
          ? null
          : map['ownerAccount'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      skipFinalSnapshot: map['skipFinalSnapshot'] == null
          ? null
          : map['skipFinalSnapshot'] as bool,
      snapshotArn: map['snapshotArn'] == null
          ? null
          : map['snapshotArn'] as String,
      snapshotClusterIdentifier: map['snapshotClusterIdentifier'] == null
          ? null
          : map['snapshotClusterIdentifier'] as String,
      snapshotIdentifier: map['snapshotIdentifier'] == null
          ? null
          : map['snapshotIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
