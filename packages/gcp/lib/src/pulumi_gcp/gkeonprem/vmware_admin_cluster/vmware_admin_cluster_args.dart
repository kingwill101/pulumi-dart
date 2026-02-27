// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vmware_admin_cluster_addon_node/vmware_admin_cluster_addon_node.dart';
import '../vmware_admin_cluster_anti_affinity_groups/vmware_admin_cluster_anti_affinity_groups.dart';
import '../vmware_admin_cluster_authorization/vmware_admin_cluster_authorization.dart';
import '../vmware_admin_cluster_auto_repair_config/vmware_admin_cluster_auto_repair_config.dart';
import '../vmware_admin_cluster_control_plane_node/vmware_admin_cluster_control_plane_node.dart';
import '../vmware_admin_cluster_load_balancer/vmware_admin_cluster_load_balancer.dart';
import '../vmware_admin_cluster_network_config/vmware_admin_cluster_network_config.dart';
import '../vmware_admin_cluster_platform_config/vmware_admin_cluster_platform_config.dart';
import '../vmware_admin_cluster_private_registry_config/vmware_admin_cluster_private_registry_config.dart';
import '../vmware_admin_cluster_proxy/vmware_admin_cluster_proxy.dart';
import '../vmware_admin_cluster_vcenter/vmware_admin_cluster_vcenter.dart';

/// The set of arguments for VmwareAdminCluster.
class VmwareAdminClusterArgs {
  /// The VMware admin cluster addon node configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAddonNode>? addonNode;

  /// Annotations on the VMware Admin Cluster.
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

  /// AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAntiAffinityGroups>? antiAffinityGroups;

  /// The VMware admin cluster authorization configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAuthorization>? authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterAutoRepairConfig>? autoRepairConfig;

  /// The bootstrap cluster this VMware admin cluster belongs to.
  final pulumi.Input<String>? bootstrapClusterMembership;

  /// The VMware admin cluster control plane node configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterControlPlaneNode>? controlPlaneNode;

  /// A human readable description of this VMware admin cluster.
  final pulumi.Input<String>? description;

  /// If set, the advanced cluster feature is enabled.
  final pulumi.Input<bool>? enableAdvancedCluster;

  /// The OS image type for the VMware admin cluster.
  final pulumi.Input<String>? imageType;

  /// Specifies the load balancer configuration for VMware admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancer>? loadBalancer;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The VMware admin cluster resource name.
  final pulumi.Input<String>? name;

  /// The VMware admin cluster network configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfig> networkConfig;

  /// The Anthos clusters on the VMware version for the admin cluster.
  final pulumi.Input<String>? onPremVersion;

  /// The VMware platform configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterPlatformConfig>? platformConfig;

  /// Configuration for private registry.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterPrivateRegistryConfig>?
      privateRegistryConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration for proxy.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterProxy>? proxy;

  /// Specifies vCenter config for the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterVcenter>? vcenter;

  VmwareAdminClusterArgs({
    this.addonNode,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    this.bootstrapClusterMembership,
    this.controlPlaneNode,
    this.description,
    this.enableAdvancedCluster,
    this.imageType,
    this.loadBalancer,
    required this.location,
    this.name,
    required this.networkConfig,
    this.onPremVersion,
    this.platformConfig,
    this.privateRegistryConfig,
    this.project,
    this.proxy,
    this.vcenter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonNodeValue = addonNode;
    if (addonNodeValue != null) {
      map['addonNode'] = pulumi.Input.mapOptionalInputValue<
          VmwareAdminClusterAddonNode,
          Map<String, dynamic>>(addonNodeValue, (value) => value.toMap());
    }
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final antiAffinityGroupsValue = antiAffinityGroups;
    if (antiAffinityGroupsValue != null) {
      map['antiAffinityGroups'] = pulumi.Input.mapOptionalInputValue<
              VmwareAdminClusterAntiAffinityGroups, Map<String, dynamic>>(
          antiAffinityGroupsValue, (value) => value.toMap());
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = pulumi.Input.mapOptionalInputValue<
          VmwareAdminClusterAuthorization,
          Map<String, dynamic>>(authorizationValue, (value) => value.toMap());
    }
    final autoRepairConfigValue = autoRepairConfig;
    if (autoRepairConfigValue != null) {
      map['autoRepairConfig'] = pulumi.Input.mapOptionalInputValue<
              VmwareAdminClusterAutoRepairConfig, Map<String, dynamic>>(
          autoRepairConfigValue, (value) => value.toMap());
    }
    final bootstrapClusterMembershipValue = bootstrapClusterMembership;
    if (bootstrapClusterMembershipValue != null) {
      map['bootstrapClusterMembership'] = bootstrapClusterMembershipValue;
    }
    final controlPlaneNodeValue = controlPlaneNode;
    if (controlPlaneNodeValue != null) {
      map['controlPlaneNode'] = pulumi.Input.mapOptionalInputValue<
              VmwareAdminClusterControlPlaneNode, Map<String, dynamic>>(
          controlPlaneNodeValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableAdvancedClusterValue = enableAdvancedCluster;
    if (enableAdvancedClusterValue != null) {
      map['enableAdvancedCluster'] = enableAdvancedClusterValue;
    }
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = pulumi.Input.mapOptionalInputValue<
          VmwareAdminClusterLoadBalancer,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] = pulumi.Input.mapInputValue<
        VmwareAdminClusterNetworkConfig,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    final onPremVersionValue = onPremVersion;
    if (onPremVersionValue != null) {
      map['onPremVersion'] = onPremVersionValue;
    }
    final platformConfigValue = platformConfig;
    if (platformConfigValue != null) {
      map['platformConfig'] = pulumi.Input.mapOptionalInputValue<
          VmwareAdminClusterPlatformConfig,
          Map<String, dynamic>>(platformConfigValue, (value) => value.toMap());
    }
    final privateRegistryConfigValue = privateRegistryConfig;
    if (privateRegistryConfigValue != null) {
      map['privateRegistryConfig'] = pulumi.Input.mapOptionalInputValue<
              VmwareAdminClusterPrivateRegistryConfig, Map<String, dynamic>>(
          privateRegistryConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = pulumi.Input.mapOptionalInputValue<VmwareAdminClusterProxy,
          Map<String, dynamic>>(proxyValue, (value) => value.toMap());
    }
    final vcenterValue = vcenter;
    if (vcenterValue != null) {
      map['vcenter'] = pulumi.Input.mapOptionalInputValue<
          VmwareAdminClusterVcenter,
          Map<String, dynamic>>(vcenterValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterArgs(
      addonNode: pulumi.Input.asOptionalInput<VmwareAdminClusterAddonNode>(
          map['addonNode']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      antiAffinityGroups:
          pulumi.Input.asOptionalInput<VmwareAdminClusterAntiAffinityGroups>(
              map['antiAffinityGroups']),
      authorization:
          pulumi.Input.asOptionalInput<VmwareAdminClusterAuthorization>(
              map['authorization']),
      autoRepairConfig:
          pulumi.Input.asOptionalInput<VmwareAdminClusterAutoRepairConfig>(
              map['autoRepairConfig']),
      bootstrapClusterMembership: pulumi.Input.asOptionalInput<String>(
          map['bootstrapClusterMembership']),
      controlPlaneNode:
          pulumi.Input.asOptionalInput<VmwareAdminClusterControlPlaneNode>(
              map['controlPlaneNode']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableAdvancedCluster:
          pulumi.Input.asOptionalInput<bool>(map['enableAdvancedCluster']),
      imageType: pulumi.Input.asOptionalInput<String>(map['imageType']),
      loadBalancer:
          pulumi.Input.asOptionalInput<VmwareAdminClusterLoadBalancer>(
              map['loadBalancer']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig: pulumi.Input.asInput<VmwareAdminClusterNetworkConfig>(
          map['networkConfig']),
      onPremVersion: pulumi.Input.asOptionalInput<String>(map['onPremVersion']),
      platformConfig:
          pulumi.Input.asOptionalInput<VmwareAdminClusterPlatformConfig>(
              map['platformConfig']),
      privateRegistryConfig:
          pulumi.Input.asOptionalInput<VmwareAdminClusterPrivateRegistryConfig>(
              map['privateRegistryConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxy:
          pulumi.Input.asOptionalInput<VmwareAdminClusterProxy>(map['proxy']),
      vcenter: pulumi.Input.asOptionalInput<VmwareAdminClusterVcenter>(
          map['vcenter']),
    );
  }
}
