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
  final List<GetClusterAccessConfig>? accessConfigs;
  /// ARN of the cluster.
  final String? arn;
  /// Nested attribute containing `certificate-authority-data` for your cluster.
  final List<GetClusterCertificateAuthority>? certificateAuthorities;
  /// The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  final String? clusterId;
  /// Nested attribute containing compute capability configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterComputeConfig>? computeConfigs;
  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information.
  final List<GetClusterControlPlaneScalingConfig>? controlPlaneScalingConfigs;
  /// Unix epoch time stamp in seconds for when the cluster was created.
  final String? createdAt;
  /// Whether deletion protection for the cluster is enabled.
  final bool? deletionProtection;
  /// The enabled control plane logs.
  final List<String>? enabledClusterLogTypes;
  /// Endpoint for your Kubernetes API server.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Nested attribute containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. For an example using this information to enable IAM Roles for Service Accounts, see the `aws.eks.Cluster` resource documentation.
  final List<GetClusterIdentity>? identities;
  /// Configuration for the Kubernetes API server.
  final List<GetClusterKubeApiServerConfig>? kubeApiServerConfigs;
  /// Configuration for the Kubernetes controller manager.
  final List<GetClusterKubeControllerManagerConfig>? kubeControllerManagerConfigs;
  /// Configuration for the Kubernetes scheduler.
  final List<GetClusterKubeSchedulerConfig>? kubeSchedulerConfigs;
  /// Nested list containing Kubernetes Network Configuration.
  final List<GetClusterKubernetesNetworkConfig>? kubernetesNetworkConfigs;
  /// The name of the resource (e.g., `cpu`, `memory`).
  final String? name;
  /// Contains Outpost Configuration.
  final List<GetClusterOutpostConfig>? outpostConfigs;
  /// Platform version for the cluster.
  final String? platformVersion;
  final String? region;
  /// Contains remote network configuration for EKS Hybrid Nodes.
  final List<GetClusterRemoteNetworkConfig>? remoteNetworkConfigs;
  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
  final String? roleArn;
  /// Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  final String? status;
  /// Contains storage configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterStorageConfig>? storageConfigs;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;
  /// Configuration block for the support policy to use for the cluster.
  final List<GetClusterUpgradePolicy>? upgradePolicies;
  /// Kubernetes server version for the cluster.
  final String? version;
  /// Nested list containing VPC configuration for the cluster.
  final GetClusterVpcConfig? vpcConfig;
  /// Contains Zonal Shift Configuration.
  final List<GetClusterZonalShiftConfig>? zonalShiftConfigs;

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
  /// [region] Optional.
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
    this.accessConfigs,
    this.arn,
    this.certificateAuthorities,
    this.clusterId,
    this.computeConfigs,
    this.controlPlaneScalingConfigs,
    this.createdAt,
    this.deletionProtection,
    this.enabledClusterLogTypes,
    this.endpoint,
    this.id,
    this.identities,
    this.kubeApiServerConfigs,
    this.kubeControllerManagerConfigs,
    this.kubeSchedulerConfigs,
    this.kubernetesNetworkConfigs,
    this.name,
    this.outpostConfigs,
    this.platformVersion,
    this.region,
    this.remoteNetworkConfigs,
    this.roleArn,
    this.status,
    this.storageConfigs,
    this.tags,
    this.upgradePolicies,
    this.version,
    this.vpcConfig,
    this.zonalShiftConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?(() { final guardedValue = accessConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAccessConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'certificateAuthorities': ?(() { final guardedValue = certificateAuthorities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterCertificateAuthority, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterId': ?clusterId,
      'computeConfigs': ?(() { final guardedValue = computeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterComputeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'controlPlaneScalingConfigs': ?(() { final guardedValue = controlPlaneScalingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterControlPlaneScalingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'deletionProtection': ?deletionProtection,
      'enabledClusterLogTypes': ?enabledClusterLogTypes,
      'endpoint': ?endpoint,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeApiServerConfigs': ?(() { final guardedValue = kubeApiServerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterKubeApiServerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeControllerManagerConfigs': ?(() { final guardedValue = kubeControllerManagerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterKubeControllerManagerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeSchedulerConfigs': ?(() { final guardedValue = kubeSchedulerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterKubeSchedulerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubernetesNetworkConfigs': ?(() { final guardedValue = kubernetesNetworkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterKubernetesNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'outpostConfigs': ?(() { final guardedValue = outpostConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterOutpostConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'platformVersion': ?platformVersion,
      'region': ?region,
      'remoteNetworkConfigs': ?(() { final guardedValue = remoteNetworkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRemoteNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roleArn': ?roleArn,
      'status': ?status,
      'storageConfigs': ?(() { final guardedValue = storageConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterStorageConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'upgradePolicies': ?(() { final guardedValue = upgradePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterUpgradePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
      'vpcConfig': ?vpcConfig?.toMap(),
      'zonalShiftConfigs': ?(() { final guardedValue = zonalShiftConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterZonalShiftConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAccessConfig>(guardedValue, (value) => GetClusterAccessConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateAuthorities: (() { final guardedValue = map['certificateAuthorities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterCertificateAuthority>(guardedValue, (value) => GetClusterCertificateAuthority.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeConfigs: (() { final guardedValue = map['computeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterComputeConfig>(guardedValue, (value) => GetClusterComputeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      controlPlaneScalingConfigs: (() { final guardedValue = map['controlPlaneScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterControlPlaneScalingConfig>(guardedValue, (value) => GetClusterControlPlaneScalingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledClusterLogTypes: (() { final guardedValue = map['enabledClusterLogTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterIdentity>(guardedValue, (value) => GetClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeApiServerConfigs: (() { final guardedValue = map['kubeApiServerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterKubeApiServerConfig>(guardedValue, (value) => GetClusterKubeApiServerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeControllerManagerConfigs: (() { final guardedValue = map['kubeControllerManagerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterKubeControllerManagerConfig>(guardedValue, (value) => GetClusterKubeControllerManagerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeSchedulerConfigs: (() { final guardedValue = map['kubeSchedulerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterKubeSchedulerConfig>(guardedValue, (value) => GetClusterKubeSchedulerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubernetesNetworkConfigs: (() { final guardedValue = map['kubernetesNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterKubernetesNetworkConfig>(guardedValue, (value) => GetClusterKubernetesNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostConfigs: (() { final guardedValue = map['outpostConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterOutpostConfig>(guardedValue, (value) => GetClusterOutpostConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteNetworkConfigs: (() { final guardedValue = map['remoteNetworkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRemoteNetworkConfig>(guardedValue, (value) => GetClusterRemoteNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageConfigs: (() { final guardedValue = map['storageConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterStorageConfig>(guardedValue, (value) => GetClusterStorageConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      upgradePolicies: (() { final guardedValue = map['upgradePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterUpgradePolicy>(guardedValue, (value) => GetClusterUpgradePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return GetClusterVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zonalShiftConfigs: (() { final guardedValue = map['zonalShiftConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterZonalShiftConfig>(guardedValue, (value) => GetClusterZonalShiftConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
