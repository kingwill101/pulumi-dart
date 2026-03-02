// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_access_config.dart';
import 'cluster_compute_config.dart';
import 'cluster_control_plane_scaling_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_kubernetes_network_config.dart';
import 'cluster_outpost_config.dart';
import 'cluster_remote_network_config.dart';
import 'cluster_storage_config.dart';
import 'cluster_upgrade_policy.dart';
import 'cluster_vpc_config.dart';
import 'cluster_zonal_shift_config.dart';

/// {@template pulumi_eks_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_eks_cluster_cluster_args_doc}
class ClusterArgs {
  /// Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  final pulumi.Input<ClusterAccessConfig>? accessConfig;
  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  final pulumi.Input<bool>? bootstrapSelfManagedAddons;
  /// Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  final pulumi.Input<ClusterComputeConfig>? computeConfig;
  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  final pulumi.Input<ClusterControlPlaneScalingConfig>? controlPlaneScalingConfig;
  final pulumi.Input<List<String>>? defaultAddonsToRemoves;
  /// Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  final pulumi.Input<List<String>>? enabledClusterLogTypes;
  /// Configuration block with encryption configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterEncryptionConfig>? encryptionConfig;
  /// Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  final pulumi.Input<bool>? forceUpdateVersion;
  /// Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<ClusterKubernetesNetworkConfig>? kubernetesNetworkConfig;
  /// Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  final pulumi.Input<String>? name;
  /// Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  final pulumi.Input<ClusterOutpostConfig>? outpostConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  final pulumi.Input<ClusterRemoteNetworkConfig>? remoteNetworkConfig;
  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `depends_on` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  final pulumi.Input<String> roleArn;
  /// Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  final pulumi.Input<ClusterStorageConfig>? storageConfig;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
  final pulumi.Input<ClusterUpgradePolicy>? upgradePolicy;
  /// Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  final pulumi.Input<String>? version;
  /// Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ClusterVpcConfig> vpcConfig;
  /// Configuration block with zonal shift configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterZonalShiftConfig>? zonalShiftConfig;

  /// Creates a new [ClusterArgs].
  /// [accessConfig] Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  /// [bootstrapSelfManagedAddons] Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  /// [computeConfig] Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  /// [controlPlaneScalingConfig] Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  /// [defaultAddonsToRemoves] Optional.
  /// [deletionProtection] Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  /// [enabledClusterLogTypes] List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  /// [encryptionConfig] Configuration block with encryption configuration for the cluster. Detailed below.
  /// [forceUpdateVersion] Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  /// [kubernetesNetworkConfig] Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  /// [name] Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  /// [outpostConfig] Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteNetworkConfig] Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  /// [roleArn] ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `depends_on` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  /// [storageConfig] Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [upgradePolicy] Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
  /// [version] Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  /// [vpcConfig] Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  /// [zonalShiftConfig] Configuration block with zonal shift configuration for the cluster. Detailed below.
  ClusterArgs({
    this.accessConfig,
    this.bootstrapSelfManagedAddons,
    this.computeConfig,
    this.controlPlaneScalingConfig,
    this.defaultAddonsToRemoves,
    this.deletionProtection,
    this.enabledClusterLogTypes,
    this.encryptionConfig,
    this.forceUpdateVersion,
    this.kubernetesNetworkConfig,
    this.name,
    this.outpostConfig,
    this.region,
    this.remoteNetworkConfig,
    required this.roleArn,
    this.storageConfig,
    this.tags,
    this.upgradePolicy,
    this.version,
    required this.vpcConfig,
    this.zonalShiftConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'bootstrapSelfManagedAddons': ?bootstrapSelfManagedAddons,
      'computeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterComputeConfig, Map<String, dynamic>>(computeConfig, (value) => value.toMap()),
      'controlPlaneScalingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneScalingConfig, Map<String, dynamic>>(controlPlaneScalingConfig, (value) => value.toMap()),
      'defaultAddonsToRemoves': ?defaultAddonsToRemoves,
      'deletionProtection': ?deletionProtection,
      'enabledClusterLogTypes': ?enabledClusterLogTypes,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'forceUpdateVersion': ?forceUpdateVersion,
      'kubernetesNetworkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterKubernetesNetworkConfig, Map<String, dynamic>>(kubernetesNetworkConfig, (value) => value.toMap()),
      'name': ?name,
      'outpostConfig': ?pulumi.Input.mapOptionalInputValue<ClusterOutpostConfig, Map<String, dynamic>>(outpostConfig, (value) => value.toMap()),
      'region': ?region,
      'remoteNetworkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRemoteNetworkConfig, Map<String, dynamic>>(remoteNetworkConfig, (value) => value.toMap()),
      'roleArn': roleArn,
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<ClusterStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
      'tags': ?tags,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'version': ?version,
      'vpcConfig': pulumi.Input.mapInputValue<ClusterVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
      'zonalShiftConfig': ?pulumi.Input.mapOptionalInputValue<ClusterZonalShiftConfig, Map<String, dynamic>>(zonalShiftConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      accessConfig: map['accessConfig'] == null ? null : ((ClusterAccessConfig.fromMap((map['accessConfig']! as Map).cast<String, dynamic>())).input()).input(),
      bootstrapSelfManagedAddons: map['bootstrapSelfManagedAddons'] == null ? null : ((map['bootstrapSelfManagedAddons'] as bool).input()).input(),
      computeConfig: map['computeConfig'] == null ? null : ((ClusterComputeConfig.fromMap((map['computeConfig']! as Map).cast<String, dynamic>())).input()).input(),
      controlPlaneScalingConfig: map['controlPlaneScalingConfig'] == null ? null : ((ClusterControlPlaneScalingConfig.fromMap((map['controlPlaneScalingConfig']! as Map).cast<String, dynamic>())).input()).input(),
      defaultAddonsToRemoves: map['defaultAddonsToRemoves'] == null ? null : (((map['defaultAddonsToRemoves'] as List).cast<String>()).input()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : ((map['deletionProtection'] as bool).input()).input(),
      enabledClusterLogTypes: map['enabledClusterLogTypes'] == null ? null : (((map['enabledClusterLogTypes'] as List).cast<String>()).input()).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : ((ClusterEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input()).input(),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : ((map['forceUpdateVersion'] as bool).input()).input(),
      kubernetesNetworkConfig: map['kubernetesNetworkConfig'] == null ? null : ((ClusterKubernetesNetworkConfig.fromMap((map['kubernetesNetworkConfig']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outpostConfig: map['outpostConfig'] == null ? null : ((ClusterOutpostConfig.fromMap((map['outpostConfig']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      remoteNetworkConfig: map['remoteNetworkConfig'] == null ? null : ((ClusterRemoteNetworkConfig.fromMap((map['remoteNetworkConfig']! as Map).cast<String, dynamic>())).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      storageConfig: map['storageConfig'] == null ? null : ((ClusterStorageConfig.fromMap((map['storageConfig']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : ((ClusterUpgradePolicy.fromMap((map['upgradePolicy']! as Map).cast<String, dynamic>())).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      vpcConfig: (ClusterVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())).input(),
      zonalShiftConfig: map['zonalShiftConfig'] == null ? null : ((ClusterZonalShiftConfig.fromMap((map['zonalShiftConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

