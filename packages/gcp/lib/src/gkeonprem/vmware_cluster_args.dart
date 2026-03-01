// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_anti_affinity_groups.dart';
import 'vmware_cluster_authorization.dart';
import 'vmware_cluster_auto_repair_config.dart';
import 'vmware_cluster_control_plane_node.dart';
import 'vmware_cluster_dataplane_v2.dart';
import 'vmware_cluster_load_balancer.dart';
import 'vmware_cluster_network_config.dart';
import 'vmware_cluster_storage.dart';
import 'vmware_cluster_upgrade_policy.dart';
import 'vmware_cluster_vcenter.dart';

/// {@template pulumi_gkeonprem_v_mware_cluster_vmware_cluster_args_doc}
/// The set of arguments for VMwareCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v_mware_cluster_vmware_cluster_args_doc}
class VMwareClusterArgs {
  /// The admin cluster this VMware User Cluster belongs to.
  /// This is the full resource name of the admin cluster's hub membership.
  /// In the future, references to other resource types might be allowed if
  /// admin clusters are modeled as their own resources.
  final pulumi.Input<String> adminClusterMembership;

  /// Annotations on the VMware User Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAntiAffinityGroups>? antiAffinityGroups;

  /// RBAC policy that will be applied and managed by GKE On-Prem.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAuthorization>? authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAutoRepairConfig>? autoRepairConfig;

  /// VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterControlPlaneNode> controlPlaneNode;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterDataplaneV2>? dataplaneV2;

  /// A human readable description of this VMware User Cluster.
  final pulumi.Input<String>? description;

  /// Disable bundled ingress.
  final pulumi.Input<bool>? disableBundledIngress;

  /// Enable advanced cluster. Default to false.
  final pulumi.Input<bool>? enableAdvancedCluster;

  /// Enable control plane V2. Default to false.
  final pulumi.Input<bool>? enableControlPlaneV2;

  /// Load Balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancer>? loadBalancer;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The VMware cluster name.
  final pulumi.Input<String>? name;

  /// The VMware User Cluster network configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfig>? networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  final pulumi.Input<String> onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Storage configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterStorage>? storage;

  /// Specifies upgrade policy for the cluster.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterUpgradePolicy>? upgradePolicy;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// Inherited from the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterVcenter>? vcenter;

  /// Enable VM tracking.
  final pulumi.Input<bool>? vmTrackingEnabled;

  /// Creates a new [VMwareClusterArgs].
  /// [adminClusterMembership] The admin cluster this VMware User Cluster belongs to.
  /// [annotations] Annotations on the VMware User Cluster.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// [authorization] RBAC policy that will be applied and managed by GKE On-Prem.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [controlPlaneNode] VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// [dataplaneV2] VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// [description] A human readable description of this VMware User Cluster.
  /// [disableBundledIngress] Disable bundled ingress.
  /// [enableAdvancedCluster] Enable advanced cluster. Default to false.
  /// [enableControlPlaneV2] Enable control plane V2. Default to false.
  /// [loadBalancer] Load Balancer configuration.
  /// [location] The location of the resource.
  /// [name] The VMware cluster name.
  /// [networkConfig] The VMware User Cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for your user cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [storage] Storage configuration.
  /// [upgradePolicy] Specifies upgrade policy for the cluster.
  /// [vcenter] VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// [vmTrackingEnabled] Enable VM tracking.
  VMwareClusterArgs({
    required String adminClusterMembership,
    Map<String, String>? annotations,
    VMwareClusterAntiAffinityGroups? antiAffinityGroups,
    VMwareClusterAuthorization? authorization,
    VMwareClusterAutoRepairConfig? autoRepairConfig,
    required VMwareClusterControlPlaneNode controlPlaneNode,
    VMwareClusterDataplaneV2? dataplaneV2,
    String? description,
    bool? disableBundledIngress,
    bool? enableAdvancedCluster,
    bool? enableControlPlaneV2,
    VMwareClusterLoadBalancer? loadBalancer,
    required String location,
    String? name,
    VMwareClusterNetworkConfig? networkConfig,
    required String onPremVersion,
    String? project,
    VMwareClusterStorage? storage,
    VMwareClusterUpgradePolicy? upgradePolicy,
    VMwareClusterVcenter? vcenter,
    bool? vmTrackingEnabled,
  }) : adminClusterMembership = pulumi.Input.asInput<String>(
         adminClusterMembership,
       ),
       annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       antiAffinityGroups =
           pulumi.Input.asOptionalInput<VMwareClusterAntiAffinityGroups>(
             antiAffinityGroups,
           ),
       authorization = pulumi.Input.asOptionalInput<VMwareClusterAuthorization>(
         authorization,
       ),
       autoRepairConfig =
           pulumi.Input.asOptionalInput<VMwareClusterAutoRepairConfig>(
             autoRepairConfig,
           ),
       controlPlaneNode = pulumi.Input.asInput<VMwareClusterControlPlaneNode>(
         controlPlaneNode,
       ),
       dataplaneV2 = pulumi.Input.asOptionalInput<VMwareClusterDataplaneV2>(
         dataplaneV2,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       disableBundledIngress = pulumi.Input.asOptionalInput<bool>(
         disableBundledIngress,
       ),
       enableAdvancedCluster = pulumi.Input.asOptionalInput<bool>(
         enableAdvancedCluster,
       ),
       enableControlPlaneV2 = pulumi.Input.asOptionalInput<bool>(
         enableControlPlaneV2,
       ),
       loadBalancer = pulumi.Input.asOptionalInput<VMwareClusterLoadBalancer>(
         loadBalancer,
       ),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       networkConfig = pulumi.Input.asOptionalInput<VMwareClusterNetworkConfig>(
         networkConfig,
       ),
       onPremVersion = pulumi.Input.asInput<String>(onPremVersion),
       project = pulumi.Input.asOptionalInput<String>(project),
       storage = pulumi.Input.asOptionalInput<VMwareClusterStorage>(storage),
       upgradePolicy = pulumi.Input.asOptionalInput<VMwareClusterUpgradePolicy>(
         upgradePolicy,
       ),
       vcenter = pulumi.Input.asOptionalInput<VMwareClusterVcenter>(vcenter),
       vmTrackingEnabled = pulumi.Input.asOptionalInput<bool>(
         vmTrackingEnabled,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'annotations': ?annotations,
      'antiAffinityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterAntiAffinityGroups,
            Map<String, dynamic>
          >(antiAffinityGroups, (value) => value.toMap()),
      'authorization':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterAuthorization,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'autoRepairConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterAutoRepairConfig,
            Map<String, dynamic>
          >(autoRepairConfig, (value) => value.toMap()),
      'controlPlaneNode':
          pulumi.Input.mapInputValue<
            VMwareClusterControlPlaneNode,
            Map<String, dynamic>
          >(controlPlaneNode, (value) => value.toMap()),
      'dataplaneV2':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterDataplaneV2,
            Map<String, dynamic>
          >(dataplaneV2, (value) => value.toMap()),
      'description': ?description,
      'disableBundledIngress': ?disableBundledIngress,
      'enableAdvancedCluster': ?enableAdvancedCluster,
      'enableControlPlaneV2': ?enableControlPlaneV2,
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterLoadBalancer,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterNetworkConfig,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'onPremVersion': onPremVersion,
      'project': ?project,
      'storage':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterStorage,
            Map<String, dynamic>
          >(storage, (value) => value.toMap()),
      'upgradePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterUpgradePolicy,
            Map<String, dynamic>
          >(upgradePolicy, (value) => value.toMap()),
      'vcenter':
          ?pulumi.Input.mapOptionalInputValue<
            VMwareClusterVcenter,
            Map<String, dynamic>
          >(vcenter, (value) => value.toMap()),
      'vmTrackingEnabled': ?vmTrackingEnabled,
    };
  }

  factory VMwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return VMwareClusterArgs(
      adminClusterMembership: map['adminClusterMembership'] as String,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      antiAffinityGroups: map['antiAffinityGroups'] == null
          ? null
          : VMwareClusterAntiAffinityGroups.fromMap(
              (map['antiAffinityGroups'] as Map).cast<String, dynamic>(),
            ),
      authorization: map['authorization'] == null
          ? null
          : VMwareClusterAuthorization.fromMap(
              (map['authorization'] as Map).cast<String, dynamic>(),
            ),
      autoRepairConfig: map['autoRepairConfig'] == null
          ? null
          : VMwareClusterAutoRepairConfig.fromMap(
              (map['autoRepairConfig'] as Map).cast<String, dynamic>(),
            ),
      controlPlaneNode: VMwareClusterControlPlaneNode.fromMap(
        (map['controlPlaneNode'] as Map).cast<String, dynamic>(),
      ),
      dataplaneV2: map['dataplaneV2'] == null
          ? null
          : VMwareClusterDataplaneV2.fromMap(
              (map['dataplaneV2'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disableBundledIngress: map['disableBundledIngress'] == null
          ? null
          : map['disableBundledIngress'] as bool,
      enableAdvancedCluster: map['enableAdvancedCluster'] == null
          ? null
          : map['enableAdvancedCluster'] as bool,
      enableControlPlaneV2: map['enableControlPlaneV2'] == null
          ? null
          : map['enableControlPlaneV2'] as bool,
      loadBalancer: map['loadBalancer'] == null
          ? null
          : VMwareClusterLoadBalancer.fromMap(
              (map['loadBalancer'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : VMwareClusterNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>(),
            ),
      onPremVersion: map['onPremVersion'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      storage: map['storage'] == null
          ? null
          : VMwareClusterStorage.fromMap(
              (map['storage'] as Map).cast<String, dynamic>(),
            ),
      upgradePolicy: map['upgradePolicy'] == null
          ? null
          : VMwareClusterUpgradePolicy.fromMap(
              (map['upgradePolicy'] as Map).cast<String, dynamic>(),
            ),
      vcenter: map['vcenter'] == null
          ? null
          : VMwareClusterVcenter.fromMap(
              (map['vcenter'] as Map).cast<String, dynamic>(),
            ),
      vmTrackingEnabled: map['vmTrackingEnabled'] == null
          ? null
          : map['vmTrackingEnabled'] as bool,
    );
  }
}
