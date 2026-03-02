// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_access_config.dart';
import 'cluster_certificate_authority.dart';
import 'cluster_compute_config.dart';
import 'cluster_control_plane_scaling_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_identity.dart';
import 'cluster_kubernetes_network_config.dart';
import 'cluster_outpost_config.dart';
import 'cluster_remote_network_config.dart';
import 'cluster_storage_config.dart';
import 'cluster_upgrade_policy.dart';
import 'cluster_vpc_config.dart';
import 'cluster_zonal_shift_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  final pulumi.Input<ClusterAccessConfig>? accessConfig;
  /// ARN of the cluster.
  final pulumi.Input<String>? arn;
  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  final pulumi.Input<bool>? bootstrapSelfManagedAddons;
  /// Attribute block containing `certificate-authority-data` for your cluster. Detailed below.
  final pulumi.Input<ClusterCertificateAuthority>? certificateAuthority;
  /// The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  final pulumi.Input<String>? clusterId;
  /// Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  final pulumi.Input<ClusterComputeConfig>? computeConfig;
  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  final pulumi.Input<ClusterControlPlaneScalingConfig>? controlPlaneScalingConfig;
  /// Unix epoch timestamp in seconds for when the cluster was created.
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<List<String>>? defaultAddonsToRemoves;
  /// Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  final pulumi.Input<List<String>>? enabledClusterLogTypes;
  /// Configuration block with encryption configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterEncryptionConfig>? encryptionConfig;
  /// Endpoint for your Kubernetes API server.
  final pulumi.Input<String>? endpoint;
  /// Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  final pulumi.Input<bool>? forceUpdateVersion;
  /// Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below.
  final pulumi.Input<List<ClusterIdentity>>? identities;
  /// Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<ClusterKubernetesNetworkConfig>? kubernetesNetworkConfig;
  /// Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  final pulumi.Input<String>? name;
  /// Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  final pulumi.Input<ClusterOutpostConfig>? outpostConfig;
  /// Platform version for the cluster.
  final pulumi.Input<String>? platformVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  final pulumi.Input<ClusterRemoteNetworkConfig>? remoteNetworkConfig;
  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `depends_on` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  final pulumi.Input<String>? roleArn;
  /// Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  final pulumi.Input<String>? status;
  /// Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  final pulumi.Input<ClusterStorageConfig>? storageConfig;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
  final pulumi.Input<ClusterUpgradePolicy>? upgradePolicy;
  /// Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  final pulumi.Input<String>? version;
  /// Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ClusterVpcConfig>? vpcConfig;
  /// Configuration block with zonal shift configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterZonalShiftConfig>? zonalShiftConfig;

  /// Creates a new [ClusterState].
  /// [accessConfig] Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  /// [arn] ARN of the cluster.
  /// [bootstrapSelfManagedAddons] Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  /// [certificateAuthority] Attribute block containing `certificate-authority-data` for your cluster. Detailed below.
  /// [clusterId] The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  /// [computeConfig] Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  /// [controlPlaneScalingConfig] Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  /// [createdAt] Unix epoch timestamp in seconds for when the cluster was created.
  /// [defaultAddonsToRemoves] Optional.
  /// [deletionProtection] Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  /// [enabledClusterLogTypes] List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  /// [encryptionConfig] Configuration block with encryption configuration for the cluster. Detailed below.
  /// [endpoint] Endpoint for your Kubernetes API server.
  /// [forceUpdateVersion] Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  /// [identities] Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below.
  /// [kubernetesNetworkConfig] Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  /// [name] Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  /// [outpostConfig] Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  /// [platformVersion] Platform version for the cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteNetworkConfig] Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  /// [roleArn] ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `depends_on` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  /// [status] Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  /// [storageConfig] Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [upgradePolicy] Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
  /// [version] Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  /// [vpcConfig] Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  /// [zonalShiftConfig] Configuration block with zonal shift configuration for the cluster. Detailed below.
  ClusterState({
    this.accessConfig,
    this.arn,
    this.bootstrapSelfManagedAddons,
    this.certificateAuthority,
    this.clusterId,
    this.computeConfig,
    this.controlPlaneScalingConfig,
    this.createdAt,
    this.defaultAddonsToRemoves,
    this.deletionProtection,
    this.enabledClusterLogTypes,
    this.encryptionConfig,
    this.endpoint,
    this.forceUpdateVersion,
    this.identities,
    this.kubernetesNetworkConfig,
    this.name,
    this.outpostConfig,
    this.platformVersion,
    this.region,
    this.remoteNetworkConfig,
    this.roleArn,
    this.status,
    this.storageConfig,
    this.tags,
    this.tagsAll,
    this.upgradePolicy,
    this.version,
    this.vpcConfig,
    this.zonalShiftConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'arn': ?arn,
      'bootstrapSelfManagedAddons': ?bootstrapSelfManagedAddons,
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<ClusterCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'computeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterComputeConfig, Map<String, dynamic>>(computeConfig, (value) => value.toMap()),
      'controlPlaneScalingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneScalingConfig, Map<String, dynamic>>(controlPlaneScalingConfig, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'defaultAddonsToRemoves': ?defaultAddonsToRemoves,
      'deletionProtection': ?deletionProtection,
      'enabledClusterLogTypes': ?enabledClusterLogTypes,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'forceUpdateVersion': ?forceUpdateVersion,
      'identities': ?pulumi.Input.mapOptionalInputValue<List<ClusterIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<ClusterIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubernetesNetworkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterKubernetesNetworkConfig, Map<String, dynamic>>(kubernetesNetworkConfig, (value) => value.toMap()),
      'name': ?name,
      'outpostConfig': ?pulumi.Input.mapOptionalInputValue<ClusterOutpostConfig, Map<String, dynamic>>(outpostConfig, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'region': ?region,
      'remoteNetworkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRemoteNetworkConfig, Map<String, dynamic>>(remoteNetworkConfig, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'status': ?status,
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<ClusterStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'version': ?version,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
      'zonalShiftConfig': ?pulumi.Input.mapOptionalInputValue<ClusterZonalShiftConfig, Map<String, dynamic>>(zonalShiftConfig, (value) => value.toMap()),
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      accessConfig: map['accessConfig'] == null ? null : (ClusterAccessConfig.fromMap((map['accessConfig'] as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bootstrapSelfManagedAddons: map['bootstrapSelfManagedAddons'] == null ? null : (map['bootstrapSelfManagedAddons'] as bool).input(),
      certificateAuthority: map['certificateAuthority'] == null ? null : (ClusterCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>())).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      computeConfig: map['computeConfig'] == null ? null : (ClusterComputeConfig.fromMap((map['computeConfig'] as Map).cast<String, dynamic>())).input(),
      controlPlaneScalingConfig: map['controlPlaneScalingConfig'] == null ? null : (ClusterControlPlaneScalingConfig.fromMap((map['controlPlaneScalingConfig'] as Map).cast<String, dynamic>())).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      defaultAddonsToRemoves: map['defaultAddonsToRemoves'] == null ? null : ((map['defaultAddonsToRemoves'] as List).cast<String>()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      enabledClusterLogTypes: map['enabledClusterLogTypes'] == null ? null : ((map['enabledClusterLogTypes'] as List).cast<String>()).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (ClusterEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : (map['forceUpdateVersion'] as bool).input(),
      identities: map['identities'] == null ? null : (pulumi.Input.decodeList<ClusterIdentity>(map['identities'], (value) => ClusterIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kubernetesNetworkConfig: map['kubernetesNetworkConfig'] == null ? null : (ClusterKubernetesNetworkConfig.fromMap((map['kubernetesNetworkConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outpostConfig: map['outpostConfig'] == null ? null : (ClusterOutpostConfig.fromMap((map['outpostConfig'] as Map).cast<String, dynamic>())).input(),
      platformVersion: map['platformVersion'] == null ? null : (map['platformVersion'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      remoteNetworkConfig: map['remoteNetworkConfig'] == null ? null : (ClusterRemoteNetworkConfig.fromMap((map['remoteNetworkConfig'] as Map).cast<String, dynamic>())).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageConfig: map['storageConfig'] == null ? null : (ClusterStorageConfig.fromMap((map['storageConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : (ClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (ClusterVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
      zonalShiftConfig: map['zonalShiftConfig'] == null ? null : (ClusterZonalShiftConfig.fromMap((map['zonalShiftConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

