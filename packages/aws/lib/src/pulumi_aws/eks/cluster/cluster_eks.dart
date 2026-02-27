import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_access_config/cluster_access_config.dart';
import '../cluster_certificate_authority/cluster_certificate_authority.dart';
import '../cluster_compute_config/cluster_compute_config.dart';
import '../cluster_control_plane_scaling_config/cluster_control_plane_scaling_config.dart';
import '../cluster_encryption_config/cluster_encryption_config.dart';
import '../cluster_identity/cluster_identity.dart';
import '../cluster_kubernetes_network_config/cluster_kubernetes_network_config.dart';
import '../cluster_outpost_config/cluster_outpost_config.dart';
import '../cluster_remote_network_config/cluster_remote_network_config.dart';
import '../cluster_storage_config/cluster_storage_config.dart';
import '../cluster_upgrade_policy/cluster_upgrade_policy.dart';
import '../cluster_vpc_config/cluster_vpc_config.dart';
import '../cluster_zonal_shift_config/cluster_zonal_shift_config.dart';
import 'cluster_eks_args.dart';

/// Manages an EKS Cluster.
///
/// ## Example Usage
///
/// ### EKS Cluster
///
///
///
/// ### EKS Cluster with EKS Auto Mode
///
/// > **NOTE:** When using EKS Auto Mode `compute_config.enabled`, `kubernetes_network_config.elastic_load_balancing.enabled`, and `storage_config.block_storage.enabled` must *ALL be set to `true`. Likewise for disabling EKS Auto Mode, all three arguments must be set to `false`. Enabling EKS Auto Mode also requires that `bootstrap_self_managed_addons` is set to `false`.
///
///
///
/// ### EKS Cluster with EKS Hybrid Nodes
///
///
///
/// ### Local EKS Cluster on AWS Outpost
///
/// [Creating a local Amazon EKS cluster on an AWS Outpost](https://docs.aws.amazon.com/eks/latest/userguide/create-cluster-outpost.html)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Clusters using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:eks/cluster:Cluster my_cluster my_cluster
/// ```
class ClusterEks extends pulumi.CustomResource {
  /// Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  late final pulumi.Output<ClusterAccessConfig> accessConfig;

  /// ARN of the cluster.
  late final pulumi.Output<String> arn;

  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  late final pulumi.Output<bool?> bootstrapSelfManagedAddons;

  /// Attribute block containing `certificate-authority-data` for your cluster. Detailed below.
  late final pulumi.Output<ClusterCertificateAuthority> certificateAuthority;

  /// The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  late final pulumi.Output<String> clusterId;

  /// Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  late final pulumi.Output<ClusterComputeConfig> computeConfig;

  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  late final pulumi.Output<ClusterControlPlaneScalingConfig>
      controlPlaneScalingConfig;

  /// Unix epoch timestamp in seconds for when the cluster was created.
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<List<String>?> defaultAddonsToRemoves;

  /// Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  late final pulumi.Output<bool> deletionProtection;

  /// List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  late final pulumi.Output<List<String>?> enabledClusterLogTypes;

  /// Configuration block with encryption configuration for the cluster. Detailed below.
  late final pulumi.Output<ClusterEncryptionConfig?> encryptionConfig;

  /// Endpoint for your Kubernetes API server.
  late final pulumi.Output<String> endpoint;

  /// Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  late final pulumi.Output<bool?> forceUpdateVersion;

  /// Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below.
  late final pulumi.Output<List<ClusterIdentity>> identities;

  /// Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<ClusterKubernetesNetworkConfig>
      kubernetesNetworkConfig;

  /// Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  late final pulumi.Output<String> name;

  /// Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  late final pulumi.Output<ClusterOutpostConfig?> outpostConfig;

  /// Platform version for the cluster.
  late final pulumi.Output<String> platformVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  late final pulumi.Output<ClusterRemoteNetworkConfig?> remoteNetworkConfig;

  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `depends_on` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  late final pulumi.Output<String> roleArn;

  /// Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  late final pulumi.Output<String> status;

  /// Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  late final pulumi.Output<ClusterStorageConfig> storageConfig;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
  late final pulumi.Output<ClusterUpgradePolicy> upgradePolicy;

  /// Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  late final pulumi.Output<String> version;

  /// Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ClusterVpcConfig> vpcConfig;

  /// Configuration block with zonal shift configuration for the cluster. Detailed below.
  late final pulumi.Output<ClusterZonalShiftConfig?> zonalShiftConfig;

  ClusterEks(
    String name, {
    ClusterEksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessConfig = registerOutput<ClusterAccessConfig>('accessConfig');
    this.arn = registerOutput<String>('arn');
    this.bootstrapSelfManagedAddons =
        registerOutput<bool?>('bootstrapSelfManagedAddons');
    this.certificateAuthority =
        registerOutput<ClusterCertificateAuthority>('certificateAuthority');
    this.clusterId = registerOutput<String>('clusterId');
    this.computeConfig = registerOutput<ClusterComputeConfig>('computeConfig');
    this.controlPlaneScalingConfig =
        registerOutput<ClusterControlPlaneScalingConfig>(
            'controlPlaneScalingConfig');
    this.createdAt = registerOutput<String>('createdAt');
    this.defaultAddonsToRemoves =
        registerOutput<List<String>?>('defaultAddonsToRemoves');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.enabledClusterLogTypes =
        registerOutput<List<String>?>('enabledClusterLogTypes');
    this.encryptionConfig =
        registerOutput<ClusterEncryptionConfig?>('encryptionConfig');
    this.endpoint = registerOutput<String>('endpoint');
    this.forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    this.identities = registerOutput<List<ClusterIdentity>>('identities');
    this.kubernetesNetworkConfig =
        registerOutput<ClusterKubernetesNetworkConfig>(
            'kubernetesNetworkConfig');
    this.name = registerOutput<String>('name');
    this.outpostConfig = registerOutput<ClusterOutpostConfig?>('outpostConfig');
    this.platformVersion = registerOutput<String>('platformVersion');
    this.region = registerOutput<String>('region');
    this.remoteNetworkConfig =
        registerOutput<ClusterRemoteNetworkConfig?>('remoteNetworkConfig');
    this.roleArn = registerOutput<String>('roleArn');
    this.status = registerOutput<String>('status');
    this.storageConfig = registerOutput<ClusterStorageConfig>('storageConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.upgradePolicy = registerOutput<ClusterUpgradePolicy>('upgradePolicy');
    this.version = registerOutput<String>('version');
    this.vpcConfig = registerOutput<ClusterVpcConfig>('vpcConfig');
    this.zonalShiftConfig =
        registerOutput<ClusterZonalShiftConfig?>('zonalShiftConfig');
  }
}
