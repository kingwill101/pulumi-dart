// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_anti_affinity_groups/vmware_cluster_anti_affinity_groups.dart';
import '../vmware_cluster_authorization/vmware_cluster_authorization.dart';
import '../vmware_cluster_auto_repair_config/vmware_cluster_auto_repair_config.dart';
import '../vmware_cluster_control_plane_node/vmware_cluster_control_plane_node.dart';
import '../vmware_cluster_dataplane_v2/vmware_cluster_dataplane_v2.dart';
import '../vmware_cluster_load_balancer/vmware_cluster_load_balancer.dart';
import '../vmware_cluster_network_config/vmware_cluster_network_config.dart';
import '../vmware_cluster_storage/vmware_cluster_storage.dart';
import '../vmware_cluster_upgrade_policy/vmware_cluster_upgrade_policy.dart';
import '../vmware_cluster_vcenter/vmware_cluster_vcenter.dart';

/// The set of arguments for VMwareCluster.
class VMwareClusterArgs {
  /// The admin cluster this VMware User Cluster belongs to.
  /// This is the full resource name of the admin cluster's hub membership.
  /// In the future, references to other resource types might be allowed if
  /// admin clusters are modeled as their own resources.
  final Input<String> adminClusterMembership;

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
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  final Input<VMwareClusterAntiAffinityGroups>? antiAffinityGroups;

  /// RBAC policy that will be applied and managed by GKE On-Prem.
  /// Structure is documented below.
  final Input<VMwareClusterAuthorization>? authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  final Input<VMwareClusterAutoRepairConfig>? autoRepairConfig;

  /// VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// Structure is documented below.
  final Input<VMwareClusterControlPlaneNode> controlPlaneNode;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// Structure is documented below.
  final Input<VMwareClusterDataplaneV2>? dataplaneV2;

  /// A human readable description of this VMware User Cluster.
  final Input<String>? description;

  /// Disable bundled ingress.
  final Input<bool>? disableBundledIngress;

  /// Enable advanced cluster. Default to false.
  final Input<bool>? enableAdvancedCluster;

  /// Enable control plane V2. Default to false.
  final Input<bool>? enableControlPlaneV2;

  /// Load Balancer configuration.
  /// Structure is documented below.
  final Input<VMwareClusterLoadBalancer>? loadBalancer;

  /// The location of the resource.
  final Input<String> location;

  /// The VMware cluster name.
  final Input<String>? name;

  /// The VMware User Cluster network configuration.
  /// Structure is documented below.
  final Input<VMwareClusterNetworkConfig>? networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  final Input<String> onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Storage configuration.
  /// Structure is documented below.
  final Input<VMwareClusterStorage>? storage;

  /// Specifies upgrade policy for the cluster.
  /// Structure is documented below.
  final Input<VMwareClusterUpgradePolicy>? upgradePolicy;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// Inherited from the admin cluster.
  /// Structure is documented below.
  final Input<VMwareClusterVcenter>? vcenter;

  /// Enable VM tracking.
  final Input<bool>? vmTrackingEnabled;

  VMwareClusterArgs({
    required this.adminClusterMembership,
    this.annotations,
    this.antiAffinityGroups,
    this.authorization,
    this.autoRepairConfig,
    required this.controlPlaneNode,
    this.dataplaneV2,
    this.description,
    this.disableBundledIngress,
    this.enableAdvancedCluster,
    this.enableControlPlaneV2,
    this.loadBalancer,
    required this.location,
    this.name,
    this.networkConfig,
    required this.onPremVersion,
    this.project,
    this.storage,
    this.upgradePolicy,
    this.vcenter,
    this.vmTrackingEnabled,
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
      map['antiAffinityGroups'] = Input.mapOptionalInputValue<
              VMwareClusterAntiAffinityGroups, Map<String, dynamic>>(
          antiAffinityGroupsValue, (value) => value.toMap());
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = Input.mapOptionalInputValue<
          VMwareClusterAuthorization,
          Map<String, dynamic>>(authorizationValue, (value) => value.toMap());
    }
    final autoRepairConfigValue = autoRepairConfig;
    if (autoRepairConfigValue != null) {
      map['autoRepairConfig'] = Input.mapOptionalInputValue<
              VMwareClusterAutoRepairConfig, Map<String, dynamic>>(
          autoRepairConfigValue, (value) => value.toMap());
    }
    map['controlPlaneNode'] = Input.mapInputValue<VMwareClusterControlPlaneNode,
        Map<String, dynamic>>(controlPlaneNode, (value) => value.toMap());
    final dataplaneV2Value = dataplaneV2;
    if (dataplaneV2Value != null) {
      map['dataplaneV2'] = Input.mapOptionalInputValue<VMwareClusterDataplaneV2,
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
    final enableAdvancedClusterValue = enableAdvancedCluster;
    if (enableAdvancedClusterValue != null) {
      map['enableAdvancedCluster'] = enableAdvancedClusterValue;
    }
    final enableControlPlaneV2Value = enableControlPlaneV2;
    if (enableControlPlaneV2Value != null) {
      map['enableControlPlaneV2'] = enableControlPlaneV2Value;
    }
    final loadBalancerValue = loadBalancer;
    if (loadBalancerValue != null) {
      map['loadBalancer'] = Input.mapOptionalInputValue<
          VMwareClusterLoadBalancer,
          Map<String, dynamic>>(loadBalancerValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<
          VMwareClusterNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    map['onPremVersion'] = onPremVersion;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final storageValue = storage;
    if (storageValue != null) {
      map['storage'] = Input.mapOptionalInputValue<VMwareClusterStorage,
          Map<String, dynamic>>(storageValue, (value) => value.toMap());
    }
    final upgradePolicyValue = upgradePolicy;
    if (upgradePolicyValue != null) {
      map['upgradePolicy'] = Input.mapOptionalInputValue<
          VMwareClusterUpgradePolicy,
          Map<String, dynamic>>(upgradePolicyValue, (value) => value.toMap());
    }
    final vcenterValue = vcenter;
    if (vcenterValue != null) {
      map['vcenter'] = Input.mapOptionalInputValue<VMwareClusterVcenter,
          Map<String, dynamic>>(vcenterValue, (value) => value.toMap());
    }
    final vmTrackingEnabledValue = vmTrackingEnabled;
    if (vmTrackingEnabledValue != null) {
      map['vmTrackingEnabled'] = vmTrackingEnabledValue;
    }
    return map;
  }

  factory VMwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return VMwareClusterArgs(
      adminClusterMembership:
          Input.asInput<String>(map['adminClusterMembership']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      antiAffinityGroups:
          Input.asOptionalInput<VMwareClusterAntiAffinityGroups>(
              map['antiAffinityGroups']),
      authorization: Input.asOptionalInput<VMwareClusterAuthorization>(
          map['authorization']),
      autoRepairConfig: Input.asOptionalInput<VMwareClusterAutoRepairConfig>(
          map['autoRepairConfig']),
      controlPlaneNode:
          Input.asInput<VMwareClusterControlPlaneNode>(map['controlPlaneNode']),
      dataplaneV2:
          Input.asOptionalInput<VMwareClusterDataplaneV2>(map['dataplaneV2']),
      description: Input.asOptionalInput<String>(map['description']),
      disableBundledIngress:
          Input.asOptionalInput<bool>(map['disableBundledIngress']),
      enableAdvancedCluster:
          Input.asOptionalInput<bool>(map['enableAdvancedCluster']),
      enableControlPlaneV2:
          Input.asOptionalInput<bool>(map['enableControlPlaneV2']),
      loadBalancer:
          Input.asOptionalInput<VMwareClusterLoadBalancer>(map['loadBalancer']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig: Input.asOptionalInput<VMwareClusterNetworkConfig>(
          map['networkConfig']),
      onPremVersion: Input.asInput<String>(map['onPremVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      storage: Input.asOptionalInput<VMwareClusterStorage>(map['storage']),
      upgradePolicy: Input.asOptionalInput<VMwareClusterUpgradePolicy>(
          map['upgradePolicy']),
      vcenter: Input.asOptionalInput<VMwareClusterVcenter>(map['vcenter']),
      vmTrackingEnabled: Input.asOptionalInput<bool>(map['vmTrackingEnabled']),
    );
  }
}
