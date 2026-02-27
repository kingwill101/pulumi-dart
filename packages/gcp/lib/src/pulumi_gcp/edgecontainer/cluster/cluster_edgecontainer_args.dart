// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_authorization/cluster_authorization.dart';
import '../cluster_control_plane/cluster_control_plane.dart';
import '../cluster_control_plane_encryption/cluster_control_plane_encryption.dart';
import '../cluster_fleet/cluster_fleet_edgecontainer.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy_edgecontainer.dart';
import '../cluster_networking/cluster_networking.dart';
import '../cluster_system_addons_config/cluster_system_addons_config.dart';

/// The set of arguments for Cluster.
class ClusterEdgecontainerArgs {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthorization> authorization;

  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlane>? controlPlane;

  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneEncryption>? controlPlaneEncryption;

  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  final pulumi.Input<int>? defaultMaxPodsPerNode;

  /// Address pools for cluster data plane external load balancing.
  final pulumi.Input<List<String>>? externalLoadBalancerIpv4AddressPools;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterFleetEdgecontainer> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyEdgecontainer>? maintenancePolicy;

  /// The GDCE cluster name.
  final pulumi.Input<String>? name;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworking> networking;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  final pulumi.Input<String>? releaseChannel;

  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  final pulumi.Input<ClusterSystemAddonsConfig>? systemAddonsConfig;

  /// The target cluster version. For example: "1.5.0".
  final pulumi.Input<String>? targetVersion;

  ClusterEdgecontainerArgs({
    required this.authorization,
    this.controlPlane,
    this.controlPlaneEncryption,
    this.defaultMaxPodsPerNode,
    this.externalLoadBalancerIpv4AddressPools,
    required this.fleet,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    this.name,
    required this.networking,
    this.project,
    this.releaseChannel,
    this.systemAddonsConfig,
    this.targetVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorization'] =
        pulumi.Input.mapInputValue<ClusterAuthorization, Map<String, dynamic>>(
            authorization, (value) => value.toMap());
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = pulumi.Input.mapOptionalInputValue<
          ClusterControlPlane,
          Map<String, dynamic>>(controlPlaneValue, (value) => value.toMap());
    }
    final controlPlaneEncryptionValue = controlPlaneEncryption;
    if (controlPlaneEncryptionValue != null) {
      map['controlPlaneEncryption'] = pulumi.Input.mapOptionalInputValue<
              ClusterControlPlaneEncryption, Map<String, dynamic>>(
          controlPlaneEncryptionValue, (value) => value.toMap());
    }
    final defaultMaxPodsPerNodeValue = defaultMaxPodsPerNode;
    if (defaultMaxPodsPerNodeValue != null) {
      map['defaultMaxPodsPerNode'] = defaultMaxPodsPerNodeValue;
    }
    final externalLoadBalancerIpv4AddressPoolsValue =
        externalLoadBalancerIpv4AddressPools;
    if (externalLoadBalancerIpv4AddressPoolsValue != null) {
      map['externalLoadBalancerIpv4AddressPools'] =
          externalLoadBalancerIpv4AddressPoolsValue;
    }
    map['fleet'] = pulumi.Input.mapInputValue<ClusterFleetEdgecontainer,
        Map<String, dynamic>>(fleet, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              ClusterMaintenancePolicyEdgecontainer, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networking'] =
        pulumi.Input.mapInputValue<ClusterNetworking, Map<String, dynamic>>(
            networking, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final releaseChannelValue = releaseChannel;
    if (releaseChannelValue != null) {
      map['releaseChannel'] = releaseChannelValue;
    }
    final systemAddonsConfigValue = systemAddonsConfig;
    if (systemAddonsConfigValue != null) {
      map['systemAddonsConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterSystemAddonsConfig, Map<String, dynamic>>(
          systemAddonsConfigValue, (value) => value.toMap());
    }
    final targetVersionValue = targetVersion;
    if (targetVersionValue != null) {
      map['targetVersion'] = targetVersionValue;
    }
    return map;
  }

  factory ClusterEdgecontainerArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEdgecontainerArgs(
      authorization:
          pulumi.Input.asInput<ClusterAuthorization>(map['authorization']),
      controlPlane: pulumi.Input.asOptionalInput<ClusterControlPlane>(
          map['controlPlane']),
      controlPlaneEncryption:
          pulumi.Input.asOptionalInput<ClusterControlPlaneEncryption>(
              map['controlPlaneEncryption']),
      defaultMaxPodsPerNode:
          pulumi.Input.asOptionalInput<int>(map['defaultMaxPodsPerNode']),
      externalLoadBalancerIpv4AddressPools:
          pulumi.Input.asOptionalInput<List<String>>(
              map['externalLoadBalancerIpv4AddressPools']),
      fleet: pulumi.Input.asInput<ClusterFleetEdgecontainer>(map['fleet']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      maintenancePolicy:
          pulumi.Input.asOptionalInput<ClusterMaintenancePolicyEdgecontainer>(
              map['maintenancePolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networking: pulumi.Input.asInput<ClusterNetworking>(map['networking']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseChannel:
          pulumi.Input.asOptionalInput<String>(map['releaseChannel']),
      systemAddonsConfig:
          pulumi.Input.asOptionalInput<ClusterSystemAddonsConfig>(
              map['systemAddonsConfig']),
      targetVersion: pulumi.Input.asOptionalInput<String>(map['targetVersion']),
    );
  }
}
