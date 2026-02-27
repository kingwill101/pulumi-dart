import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_node/cluster_cluster_node.dart';
import 'cluster_args13.dart';

/// Provides a Redshift Cluster Resource.
///
///
/// > **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's `default_iam_role_arn` argument and the `aws.redshift.ClusterIamRoles` resource's `default_iam_role_arn` argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// > **Note:** Write-Only argument `master_password_wo` is available to use in place of `master_password`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Managed Credentials
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Clusters using the `cluster_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/cluster:Cluster myprodcluster tf-redshift-cluster-12345
/// ```
class Cluster13 extends CustomResource {
  /// If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is `true`.
  late final Output<bool?> allowVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final Output<bool?> applyImmediately;

  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// No longer supported by the AWS API.
  /// Always returns `auto`.
  late final Output<String> aquaConfigurationStatus;

  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  late final Output<int?> automatedSnapshotRetentionPeriod;

  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if `availability_zone_relocation_enabled` is `true`.
  late final Output<String> availabilityZone;

  /// If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is `false`. Available for use on clusters from the RA3 instance family.
  late final Output<bool?> availabilityZoneRelocationEnabled;

  /// The Cluster Identifier. Must be a lower case string.
  late final Output<String> clusterIdentifier;

  /// The namespace Amazon Resource Name (ARN) of the cluster
  late final Output<String> clusterNamespaceArn;

  /// The nodes in the cluster. Cluster node blocks are documented below
  late final Output<List<ClusterClusterNode>> clusterNodes;

  /// The name of the parameter group to be associated with this cluster.
  late final Output<String> clusterParameterGroupName;

  /// The public key for the cluster
  late final Output<String> clusterPublicKey;

  /// The specific revision number of the database in the cluster
  late final Output<String> clusterRevisionNumber;

  /// The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  late final Output<String> clusterSubnetGroupName;

  /// The cluster type to use. Either `single-node` or `multi-node`.
  late final Output<String> clusterType;

  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// The version selected runs on all the nodes in the cluster.
  late final Output<String?> clusterVersion;

  /// The name of the first database to be created when the cluster is created.
  /// If you do not provide a name, Amazon Redshift will create a default database called `dev`.
  late final Output<String> databaseName;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final Output<String> defaultIamRoleArn;

  /// The DNS name of the cluster
  late final Output<String> dnsName;

  /// The Elastic IP (EIP) address for the cluster.
  late final Output<String?> elasticIp;

  /// If true , the data in the cluster is encrypted at rest.
  /// Default is `true`.
  late final Output<String?> encrypted;

  /// The connection endpoint
  late final Output<String> endpoint;

  /// If true , enhanced VPC routing is enabled.
  late final Output<bool> enhancedVpcRouting;

  /// The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be false.
  late final Output<String?> finalSnapshotIdentifier;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final Output<List<String>> iamRoles;

  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true.
  late final Output<String> kmsKeyId;

  /// The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is `current`.
  late final Output<String?> maintenanceTrackName;

  /// Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// Conflicts with `master_password` and `master_password_wo`.
  /// One of `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  late final Output<bool?> manageMasterPassword;

  /// The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and `3653`. Default value is `-1`.
  late final Output<int?> manualSnapshotRetentionPeriod;

  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password_wo`.
  /// One of `master_password`, `master_password_wo` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs, and it will be stored in the state file.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final Output<String?> masterPassword;

  /// ARN of the cluster admin credentials secret
  late final Output<String> masterPasswordSecretArn;

  /// ID of the KMS key used to encrypt the cluster admin credentials secret.
  late final Output<String> masterPasswordSecretKmsKeyId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password`.
  /// One of `master_password_wo`, `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final Output<String?> masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  late final Output<int?> masterPasswordWoVersion;

  /// Username for the master DB user.
  late final Output<String?> masterUsername;

  /// Specifies if the Redshift cluster is multi-AZ.
  late final Output<bool?> multiAz;

  /// The node type to be provisioned for the cluster.
  late final Output<String> nodeType;

  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  late final Output<int?> numberOfNodes;

  /// The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  late final Output<String?> ownerAccount;

  /// The port number on which the cluster accepts incoming connections. Valid values are between `1115` and `65535`.
  /// The cluster is accessible only via the JDBC and ODBC connection strings.
  /// Part of the connection string requires the port on which the cluster will listen for incoming connections.
  /// Default port is `5439`.
  late final Output<int?> port;

  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// Format: ddd:hh24:mi-ddd:hh24:mi
  late final Output<String> preferredMaintenanceWindow;

  /// If true, the cluster can be accessed from a public network. Default is `false`.
  late final Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  late final Output<bool?> skipFinalSnapshot;

  /// The ARN of the snapshot from which to create the new cluster. Conflicts with `snapshot_identifier`.
  late final Output<String?> snapshotArn;

  /// The name of the cluster the source snapshot was created from.
  late final Output<String?> snapshotClusterIdentifier;

  /// The name of the snapshot from which to create the new cluster.  Conflicts with `snapshot_arn`.
  late final Output<String?> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](http://docs.aws.amazon.com/cli/latest/reference/redshift/index.html#cli-aws-redshift).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  late final Output<List<String>> vpcSecurityGroupIds;

  Cluster13(
    String name, {
    ClusterArgs13? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowVersionUpgrade = registerOutput<bool?>('allowVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.aquaConfigurationStatus =
        registerOutput<String>('aquaConfigurationStatus');
    this.arn = registerOutput<String>('arn');
    this.automatedSnapshotRetentionPeriod =
        registerOutput<int?>('automatedSnapshotRetentionPeriod');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneRelocationEnabled =
        registerOutput<bool?>('availabilityZoneRelocationEnabled');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterNamespaceArn = registerOutput<String>('clusterNamespaceArn');
    this.clusterNodes =
        registerOutput<List<ClusterClusterNode>>('clusterNodes');
    this.clusterParameterGroupName =
        registerOutput<String>('clusterParameterGroupName');
    this.clusterPublicKey = registerOutput<String>('clusterPublicKey');
    this.clusterRevisionNumber =
        registerOutput<String>('clusterRevisionNumber');
    this.clusterSubnetGroupName =
        registerOutput<String>('clusterSubnetGroupName');
    this.clusterType = registerOutput<String>('clusterType');
    this.clusterVersion = registerOutput<String?>('clusterVersion');
    this.databaseName = registerOutput<String>('databaseName');
    this.defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    this.dnsName = registerOutput<String>('dnsName');
    this.elasticIp = registerOutput<String?>('elasticIp');
    this.encrypted = registerOutput<String?>('encrypted');
    this.endpoint = registerOutput<String>('endpoint');
    this.enhancedVpcRouting = registerOutput<bool>('enhancedVpcRouting');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.iamRoles = registerOutput<List<String>>('iamRoles');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.maintenanceTrackName = registerOutput<String?>('maintenanceTrackName');
    this.manageMasterPassword = registerOutput<bool?>('manageMasterPassword');
    this.manualSnapshotRetentionPeriod =
        registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.masterPassword = registerOutput<String?>('masterPassword');
    this.masterPasswordSecretArn =
        registerOutput<String>('masterPasswordSecretArn');
    this.masterPasswordSecretKmsKeyId =
        registerOutput<String>('masterPasswordSecretKmsKeyId');
    this.masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    this.masterPasswordWoVersion =
        registerOutput<int?>('masterPasswordWoVersion');
    this.masterUsername = registerOutput<String?>('masterUsername');
    this.multiAz = registerOutput<bool?>('multiAz');
    this.nodeType = registerOutput<String>('nodeType');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.ownerAccount = registerOutput<String?>('ownerAccount');
    this.port = registerOutput<int?>('port');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotArn = registerOutput<String?>('snapshotArn');
    this.snapshotClusterIdentifier =
        registerOutput<String?>('snapshotClusterIdentifier');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
