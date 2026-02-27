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

/// The set of arguments for VmwareCluster.
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

  VmwareClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.controlPlaneNode,
    this.dataplaneV2,
    this.description,
    this.disableBundledIngress,
    this.enableControlPlaneV2,
    this.etag,
    this.loadBalancer,
    this.location,
    this.name,
    this.networkConfig,
    required this.onPremVersion,
    this.project,
    this.storage,
    this.upgradePolicy,
    this.vcenter,
    this.vmTrackingEnabled,
    this.vmwareClusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminClusterMembership'] = adminClusterMembership;
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final antiAffinityGroupsValue = antiAffinityGroups;
    if (antiAffinityGroupsValue != null) {
      map['antiAffinityGroups'] = pulumi.Input.mapOptionalInputValue<
              VmwareAAGConfig, Map<String, dynamic>>(
          antiAffinityGroupsValue, (value) => value.toMap());
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = pulumi.Input.mapOptionalInputValue<Authorization,
          Map<String, dynamic>>(authorizationValue, (value) => value.toMap());
    }
    final autoRepairConfigValue = autoRepairConfig;
    if (autoRepairConfigValue != null) {
      map['autoRepairConfig'] = pulumi.Input.mapOptionalInputValue<
              VmwareAutoRepairConfig, Map<String, dynamic>>(
          autoRepairConfigValue, (value) => value.toMap());
    }
    final controlPlaneNodeValue = controlPlaneNode;
    if (controlPlaneNodeValue != null) {
      map['controlPlaneNode'] = pulumi.Input.mapOptionalInputValue<
              VmwareControlPlaneNodeConfig, Map<String, dynamic>>(
          controlPlaneNodeValue, (value) => value.toMap());
    }
    final dataplaneV2Value = dataplaneV2;
    if (dataplaneV2Value != null) {
      map['dataplaneV2'] = pulumi.Input.mapOptionalInputValue<
          VmwareDataplaneV2Config,
          Map<String, dynamic>>(dataplaneV2Value, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableBundledIngressValue = disableBundledIngress;
    if (disableBundledIngressValue != null) {
      map['disableBundledIngress'] = disableBundledIngressValue;
    }
    final enableControlPlaneV2Value = enableControlPlaneV2;
    if (enableControlPlaneV2Value != null) {
      map['enableControlPlaneV2'] = enableControlPlaneV2Value;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = pulumi.Input.mapOptionalInputValue<
          VmwareLoadBalancerConfig,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          VmwareNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    map['onPremVersion'] = onPremVersion;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = pulumi.Input.mapOptionalInputValue<VmwareStorageConfig,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = pulumi.Input.mapOptionalInputValue<
          VmwareClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    final vcenterValue = vcenter;
    if (vcenterValue != null) {
      map['vcenter'] = pulumi.Input.mapOptionalInputValue<VmwareVCenterConfig,
          Map<String, dynamic>>(vcenterValue, (value) => value.toMap());
    }
    final vmTrackingEnabledValue = vmTrackingEnabled;
    if (vmTrackingEnabledValue != null) {
      map['vmTrackingEnabled'] = vmTrackingEnabledValue;
    }
    final vmwareClusterIdValue = vmwareClusterId;
    if (vmwareClusterIdValue != null) {
      map['vmwareClusterId'] = vmwareClusterIdValue;
    }
    return map;
  }

  factory VmwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return VmwareClusterArgs(
      adminClusterMembership:
          pulumi.Input.asInput<String>(map['adminClusterMembership']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      antiAffinityGroups: pulumi.Input.asOptionalInput<VmwareAAGConfig>(
          map['antiAffinityGroups']),
      authorization:
          pulumi.Input.asOptionalInput<Authorization>(map['authorization']),
      autoRepairConfig: pulumi.Input.asOptionalInput<VmwareAutoRepairConfig>(
          map['autoRepairConfig']),
      controlPlaneNode:
          pulumi.Input.asOptionalInput<VmwareControlPlaneNodeConfig>(
              map['controlPlaneNode']),
      dataplaneV2: pulumi.Input.asOptionalInput<VmwareDataplaneV2Config>(
          map['dataplaneV2']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disableBundledIngress:
          pulumi.Input.asOptionalInput<bool>(map['disableBundledIngress']),
      enableControlPlaneV2:
          pulumi.Input.asOptionalInput<bool>(map['enableControlPlaneV2']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      loadBalancer: pulumi.Input.asOptionalInput<VmwareLoadBalancerConfig>(
          map['loadBalancer']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig: pulumi.Input.asOptionalInput<VmwareNetworkConfig>(
          map['networkConfig']),
      onPremVersion: pulumi.Input.asInput<String>(map['onPremVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storage:
          pulumi.Input.asOptionalInput<VmwareStorageConfig>(map['storage']),
      upgradePolicy: pulumi.Input.asOptionalInput<VmwareClusterUpgradePolicy>(
          map['upgradePolicy']),
      vcenter:
          pulumi.Input.asOptionalInput<VmwareVCenterConfig>(map['vcenter']),
      vmTrackingEnabled:
          pulumi.Input.asOptionalInput<bool>(map['vmTrackingEnabled']),
      vmwareClusterId:
          pulumi.Input.asOptionalInput<String>(map['vmwareClusterId']),
    );
  }
}
