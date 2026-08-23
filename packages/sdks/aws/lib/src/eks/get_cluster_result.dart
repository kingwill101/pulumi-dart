// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_access_config.dart';
import 'get_cluster_certificate_authority.dart';
import 'get_cluster_compute_config.dart';
import 'get_cluster_control_plane_scaling_config.dart';
import 'get_cluster_identity.dart';
import 'get_cluster_kube_api_server_config.dart';
import 'get_cluster_kube_controller_manager_config.dart';
import 'get_cluster_kube_scheduler_config.dart';
import 'get_cluster_kubernetes_network_config.dart';
import 'get_cluster_outpost_config.dart';
import 'get_cluster_remote_network_config.dart';
import 'get_cluster_storage_config.dart';
import 'get_cluster_upgrade_policy.dart';
import 'get_cluster_vpc_config.dart';
import 'get_cluster_zonal_shift_config.dart';

/// Result data returned by getCluster.
class GetClusterResult {
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
  /// Nested attribute containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. For an example using this information to enable IAM Roles for Service Accounts, see the `aws.eks.Cluster` resource documentation.
  final List<GetClusterIdentity> identities;
  /// Configuration for the Kubernetes API server.
  final List<GetClusterKubeApiServerConfig> kubeApiServerConfigs;
  /// Configuration for the Kubernetes controller manager.
  final List<GetClusterKubeControllerManagerConfig> kubeControllerManagerConfigs;
  /// Configuration for the Kubernetes scheduler.
  final List<GetClusterKubeSchedulerConfig> kubeSchedulerConfigs;
  /// Nested list containing Kubernetes Network Configuration.
  final List<GetClusterKubernetesNetworkConfig> kubernetesNetworkConfigs;
  /// The name of the resource (e.g., `cpu`, `memory`).
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

  /// Creates a new [GetClusterResult].
  /// [accessConfigs] Configuration block for access config.
  /// [arn] ARN of the cluster.
  /// [certificateAuthorities] Nested attribute containing `certificate-authority-data` for your cluster.
  /// [clusterId] The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  /// [computeConfigs] Nested attribute containing compute capability configuration for EKS Auto Mode enabled cluster.
  /// [controlPlaneScalingConfigs] Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information.
  /// [createdAt] Unix epoch time stamp in seconds for when the cluster was created.
  /// [deletionProtection] Whether deletion protection for the cluster is enabled.
  /// [enabledClusterLogTypes] The enabled control plane logs.
  /// [endpoint] Endpoint for your Kubernetes API server.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Nested attribute containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. For an example using this information to enable IAM Roles for Service Accounts, see the `aws.eks.Cluster` resource documentation.
  /// [kubeApiServerConfigs] Configuration for the Kubernetes API server.
  /// [kubeControllerManagerConfigs] Configuration for the Kubernetes controller manager.
  /// [kubeSchedulerConfigs] Configuration for the Kubernetes scheduler.
  /// [kubernetesNetworkConfigs] Nested list containing Kubernetes Network Configuration.
  /// [name] The name of the resource (e.g., `cpu`, `memory`).
  /// [outpostConfigs] Contains Outpost Configuration.
  /// [platformVersion] Platform version for the cluster.
  /// [region] Required.
  /// [remoteNetworkConfigs] Contains remote network configuration for EKS Hybrid Nodes.
  /// [roleArn] ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
  /// [status] Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  /// [storageConfigs] Contains storage configuration for EKS Auto Mode enabled cluster.
  /// [tags] Key-value map of resource tags.
  /// [upgradePolicies] Configuration block for the support policy to use for the cluster.
  /// [version] Kubernetes server version for the cluster.
  /// [vpcConfig] Nested list containing VPC configuration for the cluster.
  /// [zonalShiftConfigs] Contains Zonal Shift Configuration.
  const GetClusterResult({
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
    required this.kubeApiServerConfigs,
    required this.kubeControllerManagerConfigs,
    required this.kubeSchedulerConfigs,
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
    return <String, dynamic>{
      'accessConfigs': pulumi.Input.encodeList<GetClusterAccessConfig, Map<String, dynamic>>(accessConfigs, (value) => value.toMap()),
      'arn': arn,
      'certificateAuthorities': pulumi.Input.encodeList<GetClusterCertificateAuthority, Map<String, dynamic>>(certificateAuthorities, (value) => value.toMap()),
      'clusterId': clusterId,
      'computeConfigs': pulumi.Input.encodeList<GetClusterComputeConfig, Map<String, dynamic>>(computeConfigs, (value) => value.toMap()),
      'controlPlaneScalingConfigs': pulumi.Input.encodeList<GetClusterControlPlaneScalingConfig, Map<String, dynamic>>(controlPlaneScalingConfigs, (value) => value.toMap()),
      'createdAt': createdAt,
      'deletionProtection': deletionProtection,
      'enabledClusterLogTypes': enabledClusterLogTypes,
      'endpoint': endpoint,
      'id': id,
      'identities': pulumi.Input.encodeList<GetClusterIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kubeApiServerConfigs': pulumi.Input.encodeList<GetClusterKubeApiServerConfig, Map<String, dynamic>>(kubeApiServerConfigs, (value) => value.toMap()),
      'kubeControllerManagerConfigs': pulumi.Input.encodeList<GetClusterKubeControllerManagerConfig, Map<String, dynamic>>(kubeControllerManagerConfigs, (value) => value.toMap()),
      'kubeSchedulerConfigs': pulumi.Input.encodeList<GetClusterKubeSchedulerConfig, Map<String, dynamic>>(kubeSchedulerConfigs, (value) => value.toMap()),
      'kubernetesNetworkConfigs': pulumi.Input.encodeList<GetClusterKubernetesNetworkConfig, Map<String, dynamic>>(kubernetesNetworkConfigs, (value) => value.toMap()),
      'name': name,
      'outpostConfigs': pulumi.Input.encodeList<GetClusterOutpostConfig, Map<String, dynamic>>(outpostConfigs, (value) => value.toMap()),
      'platformVersion': platformVersion,
      'region': region,
      'remoteNetworkConfigs': pulumi.Input.encodeList<GetClusterRemoteNetworkConfig, Map<String, dynamic>>(remoteNetworkConfigs, (value) => value.toMap()),
      'roleArn': roleArn,
      'status': status,
      'storageConfigs': pulumi.Input.encodeList<GetClusterStorageConfig, Map<String, dynamic>>(storageConfigs, (value) => value.toMap()),
      'tags': tags,
      'upgradePolicies': pulumi.Input.encodeList<GetClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicies, (value) => value.toMap()),
      'version': version,
      'vpcConfig': vpcConfig.toMap(),
      'zonalShiftConfigs': pulumi.Input.encodeList<GetClusterZonalShiftConfig, Map<String, dynamic>>(zonalShiftConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      accessConfigs: pulumi.Input.decodeList<GetClusterAccessConfig>(map['accessConfigs']!, (value) => GetClusterAccessConfig.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      certificateAuthorities: pulumi.Input.decodeList<GetClusterCertificateAuthority>(map['certificateAuthorities']!, (value) => GetClusterCertificateAuthority.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      computeConfigs: pulumi.Input.decodeList<GetClusterComputeConfig>(map['computeConfigs']!, (value) => GetClusterComputeConfig.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneScalingConfigs: pulumi.Input.decodeList<GetClusterControlPlaneScalingConfig>(map['controlPlaneScalingConfigs']!, (value) => GetClusterControlPlaneScalingConfig.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      enabledClusterLogTypes: (map['enabledClusterLogTypes'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetClusterIdentity>(map['identities']!, (value) => GetClusterIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kubeApiServerConfigs: pulumi.Input.decodeList<GetClusterKubeApiServerConfig>(map['kubeApiServerConfigs']!, (value) => GetClusterKubeApiServerConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubeControllerManagerConfigs: pulumi.Input.decodeList<GetClusterKubeControllerManagerConfig>(map['kubeControllerManagerConfigs']!, (value) => GetClusterKubeControllerManagerConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubeSchedulerConfigs: pulumi.Input.decodeList<GetClusterKubeSchedulerConfig>(map['kubeSchedulerConfigs']!, (value) => GetClusterKubeSchedulerConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubernetesNetworkConfigs: pulumi.Input.decodeList<GetClusterKubernetesNetworkConfig>(map['kubernetesNetworkConfigs']!, (value) => GetClusterKubernetesNetworkConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      outpostConfigs: pulumi.Input.decodeList<GetClusterOutpostConfig>(map['outpostConfigs']!, (value) => GetClusterOutpostConfig.fromMap((value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] as String,
      region: map['region'] as String,
      remoteNetworkConfigs: pulumi.Input.decodeList<GetClusterRemoteNetworkConfig>(map['remoteNetworkConfigs']!, (value) => GetClusterRemoteNetworkConfig.fromMap((value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      status: map['status'] as String,
      storageConfigs: pulumi.Input.decodeList<GetClusterStorageConfig>(map['storageConfigs']!, (value) => GetClusterStorageConfig.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      upgradePolicies: pulumi.Input.decodeList<GetClusterUpgradePolicy>(map['upgradePolicies']!, (value) => GetClusterUpgradePolicy.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
      vpcConfig: GetClusterVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>()),
      zonalShiftConfigs: pulumi.Input.decodeList<GetClusterZonalShiftConfig>(map['zonalShiftConfigs']!, (value) => GetClusterZonalShiftConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
