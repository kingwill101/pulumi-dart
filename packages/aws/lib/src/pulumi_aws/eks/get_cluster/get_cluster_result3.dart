// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_access_config/get_cluster_access_config.dart';
import '../get_cluster_certificate_authority/get_cluster_certificate_authority.dart';
import '../get_cluster_compute_config/get_cluster_compute_config.dart';
import '../get_cluster_control_plane_scaling_config/get_cluster_control_plane_scaling_config.dart';
import '../get_cluster_identity/get_cluster_identity.dart';
import '../get_cluster_kubernetes_network_config/get_cluster_kubernetes_network_config.dart';
import '../get_cluster_outpost_config/get_cluster_outpost_config.dart';
import '../get_cluster_remote_network_config/get_cluster_remote_network_config.dart';
import '../get_cluster_storage_config/get_cluster_storage_config.dart';
import '../get_cluster_upgrade_policy/get_cluster_upgrade_policy.dart';
import '../get_cluster_vpc_config/get_cluster_vpc_config.dart';
import '../get_cluster_zonal_shift_config/get_cluster_zonal_shift_config.dart';

/// Result data returned by getCluster.
class GetClusterResult3 {
  /// Configuration block for access config.
  final List<GetClusterAccessConfig> accessConfigs;

  /// ARN of the cluster.
  final String arn;

  /// Nested attribute containing `certificate-authority-data` for your cluster.
  final List<GetClusterCertificateAuthority> certificateAuthorities;

  /// The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  final String clusterId;

  /// Nested attribute containing compute capability configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterComputeConfig> computeConfigs;

  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information.
  final List<GetClusterControlPlaneScalingConfig> controlPlaneScalingConfigs;

  /// Unix epoch time stamp in seconds for when the cluster was created.
  final String createdAt;

  /// Whether deletion protection for the cluster is enabled.
  final bool deletionProtection;

  /// The enabled control plane logs.
  final List<String> enabledClusterLogTypes;

  /// Endpoint for your Kubernetes API server.
  final String endpoint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Nested attribute containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. For an example using this information to enable IAM Roles for Service Accounts, see the <span pulumi-lang-nodejs="`aws.eks.Cluster`" pulumi-lang-dotnet="`aws.eks.Cluster`" pulumi-lang-go="`eks.Cluster`" pulumi-lang-python="`eks.Cluster`" pulumi-lang-yaml="`aws.eks.Cluster`" pulumi-lang-java="`aws.eks.Cluster`">`aws.eks.Cluster`</span> resource documentation.
  final List<GetClusterIdentity> identities;

  /// Nested list containing Kubernetes Network Configuration.
  final List<GetClusterKubernetesNetworkConfig> kubernetesNetworkConfigs;
  final String name;

  /// Contains Outpost Configuration.
  final List<GetClusterOutpostConfig> outpostConfigs;

  /// Platform version for the cluster.
  final String platformVersion;
  final String region;

  /// Contains remote network configuration for EKS Hybrid Nodes.
  final List<GetClusterRemoteNetworkConfig> remoteNetworkConfigs;

  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
  final String roleArn;

  /// Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  final String status;

  /// Contains storage configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterStorageConfig> storageConfigs;

  /// Key-value map of resource tags.
  final Map<String, String> tags;

  /// Configuration block for the support policy to use for the cluster.
  final List<GetClusterUpgradePolicy> upgradePolicies;

  /// Kubernetes server version for the cluster.
  final String version;

  /// Nested list containing VPC configuration for the cluster.
  final GetClusterVpcConfig vpcConfig;

  /// Contains Zonal Shift Configuration.
  final List<GetClusterZonalShiftConfig> zonalShiftConfigs;

  GetClusterResult3({
    required this.accessConfigs,
    required this.arn,
    required this.certificateAuthorities,
    required this.clusterId,
    required this.computeConfigs,
    required this.controlPlaneScalingConfigs,
    required this.createdAt,
    required this.deletionProtection,
    required this.enabledClusterLogTypes,
    required this.endpoint,
    required this.id,
    required this.identities,
    required this.kubernetesNetworkConfigs,
    required this.name,
    required this.outpostConfigs,
    required this.platformVersion,
    required this.region,
    required this.remoteNetworkConfigs,
    required this.roleArn,
    required this.status,
    required this.storageConfigs,
    required this.tags,
    required this.upgradePolicies,
    required this.version,
    required this.vpcConfig,
    required this.zonalShiftConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfigs'] =
        Input.encodeList<GetClusterAccessConfig, Map<String, dynamic>>(
            accessConfigs, (value) => value.toMap());
    map['arn'] = arn;
    map['certificateAuthorities'] =
        Input.encodeList<GetClusterCertificateAuthority, Map<String, dynamic>>(
            certificateAuthorities, (value) => value.toMap());
    map['clusterId'] = clusterId;
    map['computeConfigs'] =
        Input.encodeList<GetClusterComputeConfig, Map<String, dynamic>>(
            computeConfigs, (value) => value.toMap());
    map['controlPlaneScalingConfigs'] = Input.encodeList<
            GetClusterControlPlaneScalingConfig, Map<String, dynamic>>(
        controlPlaneScalingConfigs, (value) => value.toMap());
    map['createdAt'] = createdAt;
    map['deletionProtection'] = deletionProtection;
    map['enabledClusterLogTypes'] = enabledClusterLogTypes;
    map['endpoint'] = endpoint;
    map['id'] = id;
    map['identities'] =
        Input.encodeList<GetClusterIdentity, Map<String, dynamic>>(
            identities, (value) => value.toMap());
    map['kubernetesNetworkConfigs'] = Input.encodeList<
            GetClusterKubernetesNetworkConfig, Map<String, dynamic>>(
        kubernetesNetworkConfigs, (value) => value.toMap());
    map['name'] = name;
    map['outpostConfigs'] =
        Input.encodeList<GetClusterOutpostConfig, Map<String, dynamic>>(
            outpostConfigs, (value) => value.toMap());
    map['platformVersion'] = platformVersion;
    map['region'] = region;
    map['remoteNetworkConfigs'] =
        Input.encodeList<GetClusterRemoteNetworkConfig, Map<String, dynamic>>(
            remoteNetworkConfigs, (value) => value.toMap());
    map['roleArn'] = roleArn;
    map['status'] = status;
    map['storageConfigs'] =
        Input.encodeList<GetClusterStorageConfig, Map<String, dynamic>>(
            storageConfigs, (value) => value.toMap());
    map['tags'] = tags;
    map['upgradePolicies'] =
        Input.encodeList<GetClusterUpgradePolicy, Map<String, dynamic>>(
            upgradePolicies, (value) => value.toMap());
    map['version'] = version;
    map['vpcConfig'] = vpcConfig.toMap();
    map['zonalShiftConfigs'] =
        Input.encodeList<GetClusterZonalShiftConfig, Map<String, dynamic>>(
            zonalShiftConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterResult3.fromMap(Map<String, dynamic> map) {
    return GetClusterResult3(
      accessConfigs: Input.decodeList<GetClusterAccessConfig>(
          map['accessConfigs'],
          (value) => GetClusterAccessConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      certificateAuthorities: Input.decodeList<GetClusterCertificateAuthority>(
          map['certificateAuthorities'],
          (value) => GetClusterCertificateAuthority.fromMap(
              (value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      computeConfigs: Input.decodeList<GetClusterComputeConfig>(
          map['computeConfigs'],
          (value) => GetClusterComputeConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      controlPlaneScalingConfigs:
          Input.decodeList<GetClusterControlPlaneScalingConfig>(
              map['controlPlaneScalingConfigs'],
              (value) => GetClusterControlPlaneScalingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      enabledClusterLogTypes:
          (map['enabledClusterLogTypes'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      identities: Input.decodeList<GetClusterIdentity>(
          map['identities'],
          (value) => GetClusterIdentity.fromMap(
              (value as Map).cast<String, dynamic>())),
      kubernetesNetworkConfigs:
          Input.decodeList<GetClusterKubernetesNetworkConfig>(
              map['kubernetesNetworkConfigs'],
              (value) => GetClusterKubernetesNetworkConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      outpostConfigs: Input.decodeList<GetClusterOutpostConfig>(
          map['outpostConfigs'],
          (value) => GetClusterOutpostConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] as String,
      region: map['region'] as String,
      remoteNetworkConfigs: Input.decodeList<GetClusterRemoteNetworkConfig>(
          map['remoteNetworkConfigs'],
          (value) => GetClusterRemoteNetworkConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      status: map['status'] as String,
      storageConfigs: Input.decodeList<GetClusterStorageConfig>(
          map['storageConfigs'],
          (value) => GetClusterStorageConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      upgradePolicies: Input.decodeList<GetClusterUpgradePolicy>(
          map['upgradePolicies'],
          (value) => GetClusterUpgradePolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
      vpcConfig: GetClusterVpcConfig.fromMap(
          (map['vpcConfig'] as Map).cast<String, dynamic>()),
      zonalShiftConfigs: Input.decodeList<GetClusterZonalShiftConfig>(
          map['zonalShiftConfigs'],
          (value) => GetClusterZonalShiftConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
