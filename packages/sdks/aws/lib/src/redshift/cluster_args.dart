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
      allowVersionUpgrade: (() {
        final guardedValue = map['allowVersionUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applyImmediately: (() {
        final guardedValue = map['applyImmediately'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      aquaConfigurationStatus: (() {
        final guardedValue = map['aquaConfigurationStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      automatedSnapshotRetentionPeriod: (() {
        final guardedValue = map['automatedSnapshotRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneRelocationEnabled: (() {
        final guardedValue = map['availabilityZoneRelocationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterIdentifier: pulumi.Input.fromValue(
        map['clusterIdentifier'] as String,
      ),
      clusterParameterGroupName: (() {
        final guardedValue = map['clusterParameterGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterSubnetGroupName: (() {
        final guardedValue = map['clusterSubnetGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterVersion: (() {
        final guardedValue = map['clusterVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultIamRoleArn: (() {
        final guardedValue = map['defaultIamRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticIp: (() {
        final guardedValue = map['elasticIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enhancedVpcRouting: (() {
        final guardedValue = map['enhancedVpcRouting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      finalSnapshotIdentifier: (() {
        final guardedValue = map['finalSnapshotIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamRoles: (() {
        final guardedValue = map['iamRoles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceTrackName: (() {
        final guardedValue = map['maintenanceTrackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manageMasterPassword: (() {
        final guardedValue = map['manageMasterPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      manualSnapshotRetentionPeriod: (() {
        final guardedValue = map['manualSnapshotRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterPassword: (() {
        final guardedValue = map['masterPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterPasswordSecretKmsKeyId: (() {
        final guardedValue = map['masterPasswordSecretKmsKeyId'];
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
      masterUsername: (() {
        final guardedValue = map['masterUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiAz: (() {
        final guardedValue = map['multiAz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      numberOfNodes: (() {
        final guardedValue = map['numberOfNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ownerAccount: (() {
        final guardedValue = map['ownerAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preferredMaintenanceWindow: (() {
        final guardedValue = map['preferredMaintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publiclyAccessible: (() {
        final guardedValue = map['publiclyAccessible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipFinalSnapshot: (() {
        final guardedValue = map['skipFinalSnapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snapshotArn: (() {
        final guardedValue = map['snapshotArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotClusterIdentifier: (() {
        final guardedValue = map['snapshotClusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotIdentifier: (() {
        final guardedValue = map['snapshotIdentifier'];
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
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
