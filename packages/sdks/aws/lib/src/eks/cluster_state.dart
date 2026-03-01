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
    pulumi.Output<ClusterAccessConfig>? accessConfig,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? bootstrapSelfManagedAddons,
    pulumi.Output<ClusterCertificateAuthority>? certificateAuthority,
    pulumi.Output<String>? clusterId,
    pulumi.Output<ClusterComputeConfig>? computeConfig,
    pulumi.Output<ClusterControlPlaneScalingConfig>? controlPlaneScalingConfig,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<String>>? defaultAddonsToRemoves,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<List<String>>? enabledClusterLogTypes,
    pulumi.Output<ClusterEncryptionConfig>? encryptionConfig,
    pulumi.Output<String>? endpoint,
    pulumi.Output<bool>? forceUpdateVersion,
    pulumi.Output<List<ClusterIdentity>>? identities,
    pulumi.Output<ClusterKubernetesNetworkConfig>? kubernetesNetworkConfig,
    pulumi.Output<String>? name,
    pulumi.Output<ClusterOutpostConfig>? outpostConfig,
    pulumi.Output<String>? platformVersion,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterRemoteNetworkConfig>? remoteNetworkConfig,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? status,
    pulumi.Output<ClusterStorageConfig>? storageConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ClusterUpgradePolicy>? upgradePolicy,
    pulumi.Output<String>? version,
    pulumi.Output<ClusterVpcConfig>? vpcConfig,
    pulumi.Output<ClusterZonalShiftConfig>? zonalShiftConfig,
  }) :
      accessConfig = pulumi.Input.asOptionalInput<ClusterAccessConfig>(accessConfig),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bootstrapSelfManagedAddons = pulumi.Input.asOptionalInput<bool>(bootstrapSelfManagedAddons),
      certificateAuthority = pulumi.Input.asOptionalInput<ClusterCertificateAuthority>(certificateAuthority),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      computeConfig = pulumi.Input.asOptionalInput<ClusterComputeConfig>(computeConfig),
      controlPlaneScalingConfig = pulumi.Input.asOptionalInput<ClusterControlPlaneScalingConfig>(controlPlaneScalingConfig),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      defaultAddonsToRemoves = pulumi.Input.asOptionalInput<List<String>>(defaultAddonsToRemoves),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enabledClusterLogTypes = pulumi.Input.asOptionalInput<List<String>>(enabledClusterLogTypes),
      encryptionConfig = pulumi.Input.asOptionalInput<ClusterEncryptionConfig>(encryptionConfig),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      forceUpdateVersion = pulumi.Input.asOptionalInput<bool>(forceUpdateVersion),
      identities = pulumi.Input.asOptionalInput<List<ClusterIdentity>>(identities),
      kubernetesNetworkConfig = pulumi.Input.asOptionalInput<ClusterKubernetesNetworkConfig>(kubernetesNetworkConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      outpostConfig = pulumi.Input.asOptionalInput<ClusterOutpostConfig>(outpostConfig),
      platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteNetworkConfig = pulumi.Input.asOptionalInput<ClusterRemoteNetworkConfig>(remoteNetworkConfig),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageConfig = pulumi.Input.asOptionalInput<ClusterStorageConfig>(storageConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      upgradePolicy = pulumi.Input.asOptionalInput<ClusterUpgradePolicy>(upgradePolicy),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcConfig = pulumi.Input.asOptionalInput<ClusterVpcConfig>(vpcConfig),
      zonalShiftConfig = pulumi.Input.asOptionalInput<ClusterZonalShiftConfig>(zonalShiftConfig);

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
      accessConfig: map['accessConfig'] == null ? null : pulumi.Output.create<ClusterAccessConfig>(ClusterAccessConfig.fromMap((map['accessConfig'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bootstrapSelfManagedAddons: map['bootstrapSelfManagedAddons'] == null ? null : pulumi.Output.create<bool>(map['bootstrapSelfManagedAddons'] as bool),
      certificateAuthority: map['certificateAuthority'] == null ? null : pulumi.Output.create<ClusterCertificateAuthority>(ClusterCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      computeConfig: map['computeConfig'] == null ? null : pulumi.Output.create<ClusterComputeConfig>(ClusterComputeConfig.fromMap((map['computeConfig'] as Map).cast<String, dynamic>())),
      controlPlaneScalingConfig: map['controlPlaneScalingConfig'] == null ? null : pulumi.Output.create<ClusterControlPlaneScalingConfig>(ClusterControlPlaneScalingConfig.fromMap((map['controlPlaneScalingConfig'] as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      defaultAddonsToRemoves: map['defaultAddonsToRemoves'] == null ? null : pulumi.Output.create<List<String>>((map['defaultAddonsToRemoves'] as List).cast<String>()),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      enabledClusterLogTypes: map['enabledClusterLogTypes'] == null ? null : pulumi.Output.create<List<String>>((map['enabledClusterLogTypes'] as List).cast<String>()),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<ClusterEncryptionConfig>(ClusterEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : pulumi.Output.create<bool>(map['forceUpdateVersion'] as bool),
      identities: map['identities'] == null ? null : pulumi.Output.create<List<ClusterIdentity>>(pulumi.Input.decodeList<ClusterIdentity>(map['identities'], (value) => ClusterIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      kubernetesNetworkConfig: map['kubernetesNetworkConfig'] == null ? null : pulumi.Output.create<ClusterKubernetesNetworkConfig>(ClusterKubernetesNetworkConfig.fromMap((map['kubernetesNetworkConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outpostConfig: map['outpostConfig'] == null ? null : pulumi.Output.create<ClusterOutpostConfig>(ClusterOutpostConfig.fromMap((map['outpostConfig'] as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null ? null : pulumi.Output.create<String>(map['platformVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteNetworkConfig: map['remoteNetworkConfig'] == null ? null : pulumi.Output.create<ClusterRemoteNetworkConfig>(ClusterRemoteNetworkConfig.fromMap((map['remoteNetworkConfig'] as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageConfig: map['storageConfig'] == null ? null : pulumi.Output.create<ClusterStorageConfig>(ClusterStorageConfig.fromMap((map['storageConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<ClusterUpgradePolicy>(ClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<ClusterVpcConfig>(ClusterVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
      zonalShiftConfig: map['zonalShiftConfig'] == null ? null : pulumi.Output.create<ClusterZonalShiftConfig>(ClusterZonalShiftConfig.fromMap((map['zonalShiftConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

