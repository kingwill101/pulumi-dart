// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_authorization.dart';
import 'cluster_control_plane.dart';
import 'cluster_control_plane_encryption.dart';
import 'cluster_fleet.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_networking.dart';
import 'cluster_system_addons_config.dart';

/// {@template pulumi_edgecontainer_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_cluster_cluster_args_doc}
class ClusterArgs {
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
  final pulumi.Input<ClusterFleet> fleet;

  /// User-defined labels for the edgecloud cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Cluster-wide maintenance policy configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicy>? maintenancePolicy;

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

  /// Creates a new [ClusterArgs].
  /// [authorization] RBAC policy that will be applied and managed by GEC.
  /// [controlPlane] The configuration of the cluster control plane.
  /// [controlPlaneEncryption] Remote control plane disk encryption options. This field is only used when
  /// [defaultMaxPodsPerNode] The default maximum number of pods per node used if a maximum value is not
  /// [externalLoadBalancerIpv4AddressPools] Address pools for cluster data plane external load balancing.
  /// [fleet] Fleet related configuration.
  /// [labels] User-defined labels for the edgecloud cluster.
  /// [location] The location of the resource.
  /// [maintenancePolicy] Cluster-wide maintenance policy configuration.
  /// [name] The GDCE cluster name.
  /// [networking] Fleet related configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] The release channel a cluster is subscribed to.
  /// [systemAddonsConfig] Config that customers are allowed to define for GDCE system add-ons.
  /// [targetVersion] The target cluster version. For example: "1.5.0".
  ClusterArgs({
    required ClusterAuthorization authorization,
    ClusterControlPlane? controlPlane,
    ClusterControlPlaneEncryption? controlPlaneEncryption,
    int? defaultMaxPodsPerNode,
    List<String>? externalLoadBalancerIpv4AddressPools,
    required ClusterFleet fleet,
    Map<String, String>? labels,
    required String location,
    ClusterMaintenancePolicy? maintenancePolicy,
    String? name,
    required ClusterNetworking networking,
    String? project,
    String? releaseChannel,
    ClusterSystemAddonsConfig? systemAddonsConfig,
    String? targetVersion,
  }) : authorization = pulumi.Input.asInput<ClusterAuthorization>(
         authorization,
       ),
       controlPlane = pulumi.Input.asOptionalInput<ClusterControlPlane>(
         controlPlane,
       ),
       controlPlaneEncryption =
           pulumi.Input.asOptionalInput<ClusterControlPlaneEncryption>(
             controlPlaneEncryption,
           ),
       defaultMaxPodsPerNode = pulumi.Input.asOptionalInput<int>(
         defaultMaxPodsPerNode,
       ),
       externalLoadBalancerIpv4AddressPools =
           pulumi.Input.asOptionalInput<List<String>>(
             externalLoadBalancerIpv4AddressPools,
           ),
       fleet = pulumi.Input.asInput<ClusterFleet>(fleet),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       maintenancePolicy = pulumi
           .Input.asOptionalInput<ClusterMaintenancePolicy>(maintenancePolicy),
       name = pulumi.Input.asOptionalInput<String>(name),
       networking = pulumi.Input.asInput<ClusterNetworking>(networking),
       project = pulumi.Input.asOptionalInput<String>(project),
       releaseChannel = pulumi.Input.asOptionalInput<String>(releaseChannel),
       systemAddonsConfig =
           pulumi.Input.asOptionalInput<ClusterSystemAddonsConfig>(
             systemAddonsConfig,
           ),
       targetVersion = pulumi.Input.asOptionalInput<String>(targetVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization':
          pulumi.Input.mapInputValue<
            ClusterAuthorization,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'controlPlane':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterControlPlane,
            Map<String, dynamic>
          >(controlPlane, (value) => value.toMap()),
      'controlPlaneEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterControlPlaneEncryption,
            Map<String, dynamic>
          >(controlPlaneEncryption, (value) => value.toMap()),
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'externalLoadBalancerIpv4AddressPools':
          ?externalLoadBalancerIpv4AddressPools,
      'fleet': pulumi.Input.mapInputValue<ClusterFleet, Map<String, dynamic>>(
        fleet,
        (value) => value.toMap(),
      ),
      'labels': ?labels,
      'location': location,
      'maintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterMaintenancePolicy,
            Map<String, dynamic>
          >(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'networking':
          pulumi.Input.mapInputValue<ClusterNetworking, Map<String, dynamic>>(
            networking,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'releaseChannel': ?releaseChannel,
      'systemAddonsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterSystemAddonsConfig,
            Map<String, dynamic>
          >(systemAddonsConfig, (value) => value.toMap()),
      'targetVersion': ?targetVersion,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      authorization: ClusterAuthorization.fromMap(
        (map['authorization'] as Map).cast<String, dynamic>(),
      ),
      controlPlane: map['controlPlane'] == null
          ? null
          : ClusterControlPlane.fromMap(
              (map['controlPlane'] as Map).cast<String, dynamic>(),
            ),
      controlPlaneEncryption: map['controlPlaneEncryption'] == null
          ? null
          : ClusterControlPlaneEncryption.fromMap(
              (map['controlPlaneEncryption'] as Map).cast<String, dynamic>(),
            ),
      defaultMaxPodsPerNode: map['defaultMaxPodsPerNode'] == null
          ? null
          : map['defaultMaxPodsPerNode'] as int,
      externalLoadBalancerIpv4AddressPools:
          map['externalLoadBalancerIpv4AddressPools'] == null
          ? null
          : (map['externalLoadBalancerIpv4AddressPools'] as List)
                .cast<String>(),
      fleet: ClusterFleet.fromMap(
        (map['fleet'] as Map).cast<String, dynamic>(),
      ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null
          ? null
          : ClusterMaintenancePolicy.fromMap(
              (map['maintenancePolicy'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      networking: ClusterNetworking.fromMap(
        (map['networking'] as Map).cast<String, dynamic>(),
      ),
      project: map['project'] == null ? null : map['project'] as String,
      releaseChannel: map['releaseChannel'] == null
          ? null
          : map['releaseChannel'] as String,
      systemAddonsConfig: map['systemAddonsConfig'] == null
          ? null
          : ClusterSystemAddonsConfig.fromMap(
              (map['systemAddonsConfig'] as Map).cast<String, dynamic>(),
            ),
      targetVersion: map['targetVersion'] == null
          ? null
          : map['targetVersion'] as String,
    );
  }
}
