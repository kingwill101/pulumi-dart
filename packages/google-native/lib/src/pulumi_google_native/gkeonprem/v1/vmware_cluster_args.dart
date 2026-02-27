// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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
  final Input<String> adminClusterMembership;

  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<Map<String, String>>? annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  final Input<VmwareAAGConfig>? antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  final Input<Authorization>? authorization;

  /// Configuration for auto repairing.
  final Input<VmwareAutoRepairConfig>? autoRepairConfig;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  final Input<VmwareControlPlaneNodeConfig>? controlPlaneNode;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  final Input<VmwareDataplaneV2Config>? dataplaneV2;

  /// A human readable description of this VMware user cluster.
  final Input<String>? description;

  /// Disable bundled ingress.
  final Input<bool>? disableBundledIngress;

  /// Enable control plane V2. Default to false.
  final Input<bool>? enableControlPlaneV2;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final Input<String>? etag;

  /// Load balancer configuration.
  final Input<VmwareLoadBalancerConfig>? loadBalancer;
  final Input<String>? location;

  /// Immutable. The VMware user cluster resource name.
  final Input<String>? name;

  /// The VMware user cluster network configuration.
  final Input<VmwareNetworkConfig>? networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  final Input<String> onPremVersion;
  final Input<String>? project;

  /// Storage configuration.
  final Input<VmwareStorageConfig>? storage;

  /// Specifies upgrade policy for the cluster.
  final Input<VmwareClusterUpgradePolicy>? upgradePolicy;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  final Input<VmwareVCenterConfig>? vcenter;

  /// Enable VM tracking.
  final Input<bool>? vmTrackingEnabled;

  /// User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  final Input<String>? vmwareClusterId;

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
      map['antiAffinityGroups'] =
          Input.mapOptionalInputValue<VmwareAAGConfig, Map<String, dynamic>>(
              antiAffinityGroupsValue, (value) => value.toMap());
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] =
          Input.mapOptionalInputValue<Authorization, Map<String, dynamic>>(
              authorizationValue, (value) => value.toMap());
    }
    final autoRepairConfigValue = autoRepairConfig;
    if (autoRepairConfigValue != null) {
      map['autoRepairConfig'] = Input.mapOptionalInputValue<
              VmwareAutoRepairConfig, Map<String, dynamic>>(
          autoRepairConfigValue, (value) => value.toMap());
    }
    final controlPlaneNodeValue = controlPlaneNode;
    if (controlPlaneNodeValue != null) {
      map['controlPlaneNode'] = Input.mapOptionalInputValue<
              VmwareControlPlaneNodeConfig, Map<String, dynamic>>(
          controlPlaneNodeValue, (value) => value.toMap());
    }
    final dataplaneV2Value = dataplaneV2;
    if (dataplaneV2Value != null) {
      map['dataplaneV2'] = Input.mapOptionalInputValue<VmwareDataplaneV2Config,
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
      map['loadBalancer'] = Input.mapOptionalInputValue<
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
      map['networkConfig'] = Input.mapOptionalInputValue<VmwareNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    map['onPremVersion'] = onPremVersion;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = Input.mapOptionalInputValue<VmwareStorageConfig,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = Input.mapOptionalInputValue<
          VmwareClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    final vcenterValue = vcenter;
    if (vcenterValue != null) {
      map['vcenter'] = Input.mapOptionalInputValue<VmwareVCenterConfig,
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
          Input.asInput<String>(map['adminClusterMembership']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      antiAffinityGroups:
          Input.asOptionalInput<VmwareAAGConfig>(map['antiAffinityGroups']),
      authorization: Input.asOptionalInput<Authorization>(map['authorization']),
      autoRepairConfig: Input.asOptionalInput<VmwareAutoRepairConfig>(
          map['autoRepairConfig']),
      controlPlaneNode: Input.asOptionalInput<VmwareControlPlaneNodeConfig>(
          map['controlPlaneNode']),
      dataplaneV2:
          Input.asOptionalInput<VmwareDataplaneV2Config>(map['dataplaneV2']),
      description: Input.asOptionalInput<String>(map['description']),
      disableBundledIngress:
          Input.asOptionalInput<bool>(map['disableBundledIngress']),
      enableControlPlaneV2:
          Input.asOptionalInput<bool>(map['enableControlPlaneV2']),
      etag: Input.asOptionalInput<String>(map['etag']),
      loadBalancer:
          Input.asOptionalInput<VmwareLoadBalancerConfig>(map['loadBalancer']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asOptionalInput<VmwareNetworkConfig>(map['networkConfig']),
      onPremVersion: Input.asInput<String>(map['onPremVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      storage: Input.asOptionalInput<VmwareStorageConfig>(map['storage']),
      upgradePolicy: Input.asOptionalInput<VmwareClusterUpgradePolicy>(
          map['upgradePolicy']),
      vcenter: Input.asOptionalInput<VmwareVCenterConfig>(map['vcenter']),
      vmTrackingEnabled: Input.asOptionalInput<bool>(map['vmTrackingEnabled']),
      vmwareClusterId: Input.asOptionalInput<String>(map['vmwareClusterId']),
    );
  }
}
