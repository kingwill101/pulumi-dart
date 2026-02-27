// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_authorization/cluster_authorization.dart';
import '../cluster_control_plane/cluster_control_plane.dart';
import '../cluster_control_plane_encryption/cluster_control_plane_encryption.dart';
import '../cluster_fleet/cluster_fleet2.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy2.dart';
import '../cluster_networking/cluster_networking.dart';
import '../cluster_system_addons_config/cluster_system_addons_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs4 {
  /// RBAC policy that will be applied and managed by GEC.
  /// Structure is documented below.
  final Input<ClusterAuthorization> authorization;

  /// The configuration of the cluster control plane.
  /// Structure is documented below.
  final Input<ClusterControlPlane>? controlPlane;

  /// Remote control plane disk encryption options. This field is only used when
  /// enabling CMEK support.
  /// Structure is documented below.
  final Input<ClusterControlPlaneEncryption>? controlPlaneEncryption;

  /// The default maximum number of pods per node used if a maximum value is not
  /// specified explicitly for a node pool in this cluster. If unspecified, the
  /// Kubernetes default value will be used.
  final Input<int>? defaultMaxPodsPerNode;

  /// Address pools for cluster data plane external load balancing.
  final Input<List<String>>? externalLoadBalancerIpv4AddressPools;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final Input<ClusterFleet2> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the resource.
  final Input<String> location;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  final Input<ClusterMaintenancePolicy2>? maintenancePolicy;

  /// The GDCE cluster name.
  final Input<String>? name;

  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// Structure is documented below.
  final Input<ClusterNetworking> networking;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The release channel a cluster is subscribed to.
  /// Possible values are: `RELEASE_CHANNEL_UNSPECIFIED`, `NONE`, `REGULAR`.
  final Input<String>? releaseChannel;

  /// Config that customers are allowed to define for GDCE system add-ons.
  /// Structure is documented below.
  final Input<ClusterSystemAddonsConfig>? systemAddonsConfig;

  /// The target cluster version. For example: "1.5.0".
  final Input<String>? targetVersion;

  ClusterArgs4({
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
        Input.mapInputValue<ClusterAuthorization, Map<String, dynamic>>(
            authorization, (value) => value.toMap());
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = Input.mapOptionalInputValue<ClusterControlPlane,
          Map<String, dynamic>>(controlPlaneValue, (value) => value.toMap());
    }
    final controlPlaneEncryptionValue = controlPlaneEncryption;
    if (controlPlaneEncryptionValue != null) {
      map['controlPlaneEncryption'] = Input.mapOptionalInputValue<
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
    map['fleet'] = Input.mapInputValue<ClusterFleet2, Map<String, dynamic>>(
        fleet, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              ClusterMaintenancePolicy2, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networking'] =
        Input.mapInputValue<ClusterNetworking, Map<String, dynamic>>(
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
      map['systemAddonsConfig'] = Input.mapOptionalInputValue<
              ClusterSystemAddonsConfig, Map<String, dynamic>>(
          systemAddonsConfigValue, (value) => value.toMap());
    }
    final targetVersionValue = targetVersion;
    if (targetVersionValue != null) {
      map['targetVersion'] = targetVersionValue;
    }
    return map;
  }

  factory ClusterArgs4.fromMap(Map<String, dynamic> map) {
    return ClusterArgs4(
      authorization: Input.asInput<ClusterAuthorization>(map['authorization']),
      controlPlane:
          Input.asOptionalInput<ClusterControlPlane>(map['controlPlane']),
      controlPlaneEncryption:
          Input.asOptionalInput<ClusterControlPlaneEncryption>(
              map['controlPlaneEncryption']),
      defaultMaxPodsPerNode:
          Input.asOptionalInput<int>(map['defaultMaxPodsPerNode']),
      externalLoadBalancerIpv4AddressPools: Input.asOptionalInput<List<String>>(
          map['externalLoadBalancerIpv4AddressPools']),
      fleet: Input.asInput<ClusterFleet2>(map['fleet']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      maintenancePolicy: Input.asOptionalInput<ClusterMaintenancePolicy2>(
          map['maintenancePolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      networking: Input.asInput<ClusterNetworking>(map['networking']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseChannel: Input.asOptionalInput<String>(map['releaseChannel']),
      systemAddonsConfig: Input.asOptionalInput<ClusterSystemAddonsConfig>(
          map['systemAddonsConfig']),
      targetVersion: Input.asOptionalInput<String>(map['targetVersion']),
    );
  }
}
