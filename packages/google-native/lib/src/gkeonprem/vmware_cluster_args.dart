// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';
import 'vmware_aagconfig.dart';
import 'vmware_auto_repair_config.dart';
import 'vmware_cluster_upgrade_policy.dart';
import 'vmware_control_plane_node_config.dart';
import 'vmware_dataplane_v2_config.dart';
import 'vmware_load_balancer_config.dart';
import 'vmware_network_config.dart';
import 'vmware_storage_config.dart';
import 'vmware_vcenter_config.dart';

/// {@template pulumi_gkeonprem_v1_vmware_cluster_args_doc}
/// The set of arguments for VmwareCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_vmware_cluster_args_doc}
class VmwareClusterArgs {
  /// The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  final pulumi.Input<String> adminClusterMembership;

  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  final pulumi.Input<VmwareAAGConfig>? antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  final pulumi.Input<Authorization>? authorization;

  /// Configuration for auto repairing.
  final pulumi.Input<VmwareAutoRepairConfig>? autoRepairConfig;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  final pulumi.Input<VmwareControlPlaneNodeConfig>? controlPlaneNode;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  final pulumi.Input<VmwareDataplaneV2Config>? dataplaneV2;

  /// A human readable description of this VMware user cluster.
  final pulumi.Input<String>? description;

  /// Disable bundled ingress.
  final pulumi.Input<bool>? disableBundledIngress;

  /// Enable control plane V2. Default to false.
  final pulumi.Input<bool>? enableControlPlaneV2;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final pulumi.Input<String>? etag;

  /// Load balancer configuration.
  final pulumi.Input<VmwareLoadBalancerConfig>? loadBalancer;
  final pulumi.Input<String>? location;

  /// Immutable. The VMware user cluster resource name.
  final pulumi.Input<String>? name;

  /// The VMware user cluster network configuration.
  final pulumi.Input<VmwareNetworkConfig>? networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  final pulumi.Input<String> onPremVersion;
  final pulumi.Input<String>? project;

  /// Storage configuration.
  final pulumi.Input<VmwareStorageConfig>? storage;

  /// Specifies upgrade policy for the cluster.
  final pulumi.Input<VmwareClusterUpgradePolicy>? upgradePolicy;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  final pulumi.Input<VmwareVCenterConfig>? vcenter;

  /// Enable VM tracking.
  final pulumi.Input<bool>? vmTrackingEnabled;

  /// User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  final pulumi.Input<String>? vmwareClusterId;

  /// Creates a new [VmwareClusterArgs].
  /// [adminClusterMembership] The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  /// [annotations] Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  /// [authorization] RBAC policy that will be applied and managed by the Anthos On-Prem API.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [controlPlaneNode] VMware user cluster control plane nodes must have either 1 or 3 replicas.
  /// [dataplaneV2] VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// [description] A human readable description of this VMware user cluster.
  /// [disableBundledIngress] Disable bundled ingress.
  /// [enableControlPlaneV2] Enable control plane V2. Default to false.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [loadBalancer] Load balancer configuration.
  /// [location] Optional.
  /// [name] Immutable. The VMware user cluster resource name.
  /// [networkConfig] The VMware user cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for your user cluster.
  /// [project] Optional.
  /// [storage] Storage configuration.
  /// [upgradePolicy] Specifies upgrade policy for the cluster.
  /// [vcenter] VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  /// [vmTrackingEnabled] Enable VM tracking.
  /// [vmwareClusterId] User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  VmwareClusterArgs({
    required String adminClusterMembership,
    Map<String, String>? annotations,
    VmwareAAGConfig? antiAffinityGroups,
    Authorization? authorization,
    VmwareAutoRepairConfig? autoRepairConfig,
    VmwareControlPlaneNodeConfig? controlPlaneNode,
    VmwareDataplaneV2Config? dataplaneV2,
    String? description,
    bool? disableBundledIngress,
    bool? enableControlPlaneV2,
    String? etag,
    VmwareLoadBalancerConfig? loadBalancer,
    String? location,
    String? name,
    VmwareNetworkConfig? networkConfig,
    required String onPremVersion,
    String? project,
    VmwareStorageConfig? storage,
    VmwareClusterUpgradePolicy? upgradePolicy,
    VmwareVCenterConfig? vcenter,
    bool? vmTrackingEnabled,
    String? vmwareClusterId,
  }) : adminClusterMembership = pulumi.Input.asInput<String>(
         adminClusterMembership,
       ),
       annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       antiAffinityGroups = pulumi.Input.asOptionalInput<VmwareAAGConfig>(
         antiAffinityGroups,
       ),
       authorization = pulumi.Input.asOptionalInput<Authorization>(
         authorization,
       ),
       autoRepairConfig = pulumi.Input.asOptionalInput<VmwareAutoRepairConfig>(
         autoRepairConfig,
       ),
       controlPlaneNode =
           pulumi.Input.asOptionalInput<VmwareControlPlaneNodeConfig>(
             controlPlaneNode,
           ),
       dataplaneV2 = pulumi.Input.asOptionalInput<VmwareDataplaneV2Config>(
         dataplaneV2,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       disableBundledIngress = pulumi.Input.asOptionalInput<bool>(
         disableBundledIngress,
       ),
       enableControlPlaneV2 = pulumi.Input.asOptionalInput<bool>(
         enableControlPlaneV2,
       ),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       loadBalancer = pulumi.Input.asOptionalInput<VmwareLoadBalancerConfig>(
         loadBalancer,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       networkConfig = pulumi.Input.asOptionalInput<VmwareNetworkConfig>(
         networkConfig,
       ),
       onPremVersion = pulumi.Input.asInput<String>(onPremVersion),
       project = pulumi.Input.asOptionalInput<String>(project),
       storage = pulumi.Input.asOptionalInput<VmwareStorageConfig>(storage),
       upgradePolicy = pulumi.Input.asOptionalInput<VmwareClusterUpgradePolicy>(
         upgradePolicy,
       ),
       vcenter = pulumi.Input.asOptionalInput<VmwareVCenterConfig>(vcenter),
       vmTrackingEnabled = pulumi.Input.asOptionalInput<bool>(
         vmTrackingEnabled,
       ),
       vmwareClusterId = pulumi.Input.asOptionalInput<String>(vmwareClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'annotations': ?annotations,
      'antiAffinityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareAAGConfig,
            Map<String, dynamic>
          >(antiAffinityGroups, (value) => value.toMap()),
      'authorization':
          ?pulumi.Input.mapOptionalInputValue<
            Authorization,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'autoRepairConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareAutoRepairConfig,
            Map<String, dynamic>
          >(autoRepairConfig, (value) => value.toMap()),
      'controlPlaneNode':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareControlPlaneNodeConfig,
            Map<String, dynamic>
          >(controlPlaneNode, (value) => value.toMap()),
      'dataplaneV2':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareDataplaneV2Config,
            Map<String, dynamic>
          >(dataplaneV2, (value) => value.toMap()),
      'description': ?description,
      'disableBundledIngress': ?disableBundledIngress,
      'enableControlPlaneV2': ?enableControlPlaneV2,
      'etag': ?etag,
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareLoadBalancerConfig,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareNetworkConfig,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'onPremVersion': onPremVersion,
      'project': ?project,
      'storage':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareStorageConfig,
            Map<String, dynamic>
          >(storage, (value) => value.toMap()),
      'upgradePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareClusterUpgradePolicy,
            Map<String, dynamic>
          >(upgradePolicy, (value) => value.toMap()),
      'vcenter':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareVCenterConfig,
            Map<String, dynamic>
          >(vcenter, (value) => value.toMap()),
      'vmTrackingEnabled': ?vmTrackingEnabled,
      'vmwareClusterId': ?vmwareClusterId,
    };
  }

  factory VmwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return VmwareClusterArgs(
      adminClusterMembership: map['adminClusterMembership'] as String,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      antiAffinityGroups: map['antiAffinityGroups'] == null
          ? null
          : VmwareAAGConfig.fromMap(
              (map['antiAffinityGroups'] as Map).cast<String, dynamic>(),
            ),
      authorization: map['authorization'] == null
          ? null
          : Authorization.fromMap(
              (map['authorization'] as Map).cast<String, dynamic>(),
            ),
      autoRepairConfig: map['autoRepairConfig'] == null
          ? null
          : VmwareAutoRepairConfig.fromMap(
              (map['autoRepairConfig'] as Map).cast<String, dynamic>(),
            ),
      controlPlaneNode: map['controlPlaneNode'] == null
          ? null
          : VmwareControlPlaneNodeConfig.fromMap(
              (map['controlPlaneNode'] as Map).cast<String, dynamic>(),
            ),
      dataplaneV2: map['dataplaneV2'] == null
          ? null
          : VmwareDataplaneV2Config.fromMap(
              (map['dataplaneV2'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disableBundledIngress: map['disableBundledIngress'] == null
          ? null
          : map['disableBundledIngress'] as bool,
      enableControlPlaneV2: map['enableControlPlaneV2'] == null
          ? null
          : map['enableControlPlaneV2'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      loadBalancer: map['loadBalancer'] == null
          ? null
          : VmwareLoadBalancerConfig.fromMap(
              (map['loadBalancer'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : VmwareNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>(),
            ),
      onPremVersion: map['onPremVersion'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      storage: map['storage'] == null
          ? null
          : VmwareStorageConfig.fromMap(
              (map['storage'] as Map).cast<String, dynamic>(),
            ),
      upgradePolicy: map['upgradePolicy'] == null
          ? null
          : VmwareClusterUpgradePolicy.fromMap(
              (map['upgradePolicy'] as Map).cast<String, dynamic>(),
            ),
      vcenter: map['vcenter'] == null
          ? null
          : VmwareVCenterConfig.fromMap(
              (map['vcenter'] as Map).cast<String, dynamic>(),
            ),
      vmTrackingEnabled: map['vmTrackingEnabled'] == null
          ? null
          : map['vmTrackingEnabled'] as bool,
      vmwareClusterId: map['vmwareClusterId'] == null
          ? null
          : map['vmwareClusterId'] as String,
    );
  }
}
