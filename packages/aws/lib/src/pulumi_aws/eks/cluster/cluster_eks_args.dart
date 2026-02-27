// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_access_config/cluster_access_config.dart';
import '../cluster_compute_config/cluster_compute_config.dart';
import '../cluster_control_plane_scaling_config/cluster_control_plane_scaling_config.dart';
import '../cluster_encryption_config/cluster_encryption_config.dart';
import '../cluster_kubernetes_network_config/cluster_kubernetes_network_config.dart';
import '../cluster_outpost_config/cluster_outpost_config.dart';
import '../cluster_remote_network_config/cluster_remote_network_config.dart';
import '../cluster_storage_config/cluster_storage_config.dart';
import '../cluster_upgrade_policy/cluster_upgrade_policy.dart';
import '../cluster_vpc_config/cluster_vpc_config.dart';
import '../cluster_zonal_shift_config/cluster_zonal_shift_config.dart';

/// The set of arguments for Cluster.
class ClusterEksArgs {
  /// Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  final pulumi.Input<ClusterAccessConfig>? accessConfig;

  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  final pulumi.Input<bool>? bootstrapSelfManagedAddons;

  /// Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  final pulumi.Input<ClusterComputeConfig>? computeConfig;

  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  final pulumi.Input<ClusterControlPlaneScalingConfig>?
      controlPlaneScalingConfig;
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

  ClusterEksArgs({
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
    final map = <String, dynamic>{};
    final accessConfigValue = accessConfig;
    if (accessConfigValue != null) {
      map['accessConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterAccessConfig,
          Map<String, dynamic>>(accessConfigValue, (value) => value.toMap());
    }
    final bootstrapSelfManagedAddonsValue = bootstrapSelfManagedAddons;
    if (bootstrapSelfManagedAddonsValue != null) {
      map['bootstrapSelfManagedAddons'] = bootstrapSelfManagedAddonsValue;
    }
    final computeConfigValue = computeConfig;
    if (computeConfigValue != null) {
      map['computeConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterComputeConfig,
          Map<String, dynamic>>(computeConfigValue, (value) => value.toMap());
    }
    final controlPlaneScalingConfigValue = controlPlaneScalingConfig;
    if (controlPlaneScalingConfigValue != null) {
      map['controlPlaneScalingConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterControlPlaneScalingConfig, Map<String, dynamic>>(
          controlPlaneScalingConfigValue, (value) => value.toMap());
    }
    final defaultAddonsToRemovesValue = defaultAddonsToRemoves;
    if (defaultAddonsToRemovesValue != null) {
      map['defaultAddonsToRemoves'] = defaultAddonsToRemovesValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final enabledClusterLogTypesValue = enabledClusterLogTypes;
    if (enabledClusterLogTypesValue != null) {
      map['enabledClusterLogTypes'] = enabledClusterLogTypesValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final forceUpdateVersionValue = forceUpdateVersion;
    if (forceUpdateVersionValue != null) {
      map['forceUpdateVersion'] = forceUpdateVersionValue;
    }
    final kubernetesNetworkConfigValue = kubernetesNetworkConfig;
    if (kubernetesNetworkConfigValue != null) {
      map['kubernetesNetworkConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterKubernetesNetworkConfig, Map<String, dynamic>>(
          kubernetesNetworkConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outpostConfigValue = outpostConfig;
    if (outpostConfigValue != null) {
      map['outpostConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterOutpostConfig,
          Map<String, dynamic>>(outpostConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remoteNetworkConfigValue = remoteNetworkConfig;
    if (remoteNetworkConfigValue != null) {
      map['remoteNetworkConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterRemoteNetworkConfig, Map<String, dynamic>>(
          remoteNetworkConfigValue, (value) => value.toMap());
    }
    map['roleArn'] = roleArn;
    final storageConfigValue = storageConfig;
    if (storageConfigValue != null) {
      map['storageConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterStorageConfig,
          Map<String, dynamic>>(storageConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = pulumi.Input.mapOptionalInputValue<
          ClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    map['vpcConfig'] =
        pulumi.Input.mapInputValue<ClusterVpcConfig, Map<String, dynamic>>(
            vpcConfig, (value) => value.toMap());
    final zonalShiftConfigValue = zonalShiftConfig;
    if (zonalShiftConfigValue != null) {
      map['zonalShiftConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterZonalShiftConfig, Map<String, dynamic>>(
          zonalShiftConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterEksArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEksArgs(
      accessConfig: pulumi.Input.asOptionalInput<ClusterAccessConfig>(
          map['accessConfig']),
      bootstrapSelfManagedAddons:
          pulumi.Input.asOptionalInput<bool>(map['bootstrapSelfManagedAddons']),
      computeConfig: pulumi.Input.asOptionalInput<ClusterComputeConfig>(
          map['computeConfig']),
      controlPlaneScalingConfig:
          pulumi.Input.asOptionalInput<ClusterControlPlaneScalingConfig>(
              map['controlPlaneScalingConfig']),
      defaultAddonsToRemoves: pulumi.Input.asOptionalInput<List<String>>(
          map['defaultAddonsToRemoves']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      enabledClusterLogTypes: pulumi.Input.asOptionalInput<List<String>>(
          map['enabledClusterLogTypes']),
      encryptionConfig: pulumi.Input.asOptionalInput<ClusterEncryptionConfig>(
          map['encryptionConfig']),
      forceUpdateVersion:
          pulumi.Input.asOptionalInput<bool>(map['forceUpdateVersion']),
      kubernetesNetworkConfig:
          pulumi.Input.asOptionalInput<ClusterKubernetesNetworkConfig>(
              map['kubernetesNetworkConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outpostConfig: pulumi.Input.asOptionalInput<ClusterOutpostConfig>(
          map['outpostConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      remoteNetworkConfig:
          pulumi.Input.asOptionalInput<ClusterRemoteNetworkConfig>(
              map['remoteNetworkConfig']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      storageConfig: pulumi.Input.asOptionalInput<ClusterStorageConfig>(
          map['storageConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      upgradePolicy: pulumi.Input.asOptionalInput<ClusterUpgradePolicy>(
          map['upgradePolicy']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
      vpcConfig: pulumi.Input.asInput<ClusterVpcConfig>(map['vpcConfig']),
      zonalShiftConfig: pulumi.Input.asOptionalInput<ClusterZonalShiftConfig>(
          map['zonalShiftConfig']),
    );
  }
}
