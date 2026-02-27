// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_group_autoscaling_policy/node_group_autoscaling_policy.dart';
import '../node_group_maintenance_window/node_group_maintenance_window.dart';
import '../node_group_share_settings/node_group_share_settings.dart';

/// The set of arguments for NodeGroup.
class NodeGroupArgs {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupAutoscalingPolicy>? autoscalingPolicy;

  /// An optional textual description of the resource.
  final pulumi.Input<String>? description;

  /// The initial number of nodes in the node group. One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  final pulumi.Input<int>? initialSize;

  /// Specifies the frequency of planned maintenance events. Set to one of the following:
  /// - AS_NEEDED: Hosts are eligible to receive infrastructure and hypervisor updates as they become available.
  /// - RECURRENT: Hosts receive planned infrastructure and hypervisor updates on a periodic basis, but not more frequently than every 28 days. This minimizes the number of planned maintenance operations on individual hosts and reduces the frequency of disruptions, both live migrations and terminations, on individual VMs.
  /// Possible values are: `AS_NEEDED`, `RECURRENT`.
  final pulumi.Input<String>? maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  final pulumi.Input<String>? maintenancePolicy;

  /// contains properties for the timeframe of maintenance
  /// Structure is documented below.
  final pulumi.Input<NodeGroupMaintenanceWindow>? maintenanceWindow;

  /// Name of the resource.
  final pulumi.Input<String>? name;

  /// The URL of the node template to which this node group belongs.
  final pulumi.Input<String> nodeTemplate;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Share settings for the node group.
  /// Structure is documented below.
  final pulumi.Input<NodeGroupShareSettings>? shareSettings;

  /// Zone where this node group is located
  final pulumi.Input<String>? zone;

  NodeGroupArgs({
    this.autoscalingPolicy,
    this.description,
    this.initialSize,
    this.maintenanceInterval,
    this.maintenancePolicy,
    this.maintenanceWindow,
    this.name,
    required this.nodeTemplate,
    this.project,
    this.shareSettings,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingPolicyValue = autoscalingPolicy;
    if (autoscalingPolicyValue != null) {
      map['autoscalingPolicy'] = pulumi.Input.mapOptionalInputValue<
              NodeGroupAutoscalingPolicy, Map<String, dynamic>>(
          autoscalingPolicyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final initialSizeValue = initialSize;
    if (initialSizeValue != null) {
      map['initialSize'] = initialSizeValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = maintenancePolicyValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = pulumi.Input.mapOptionalInputValue<
              NodeGroupMaintenanceWindow, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nodeTemplate'] = nodeTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupShareSettings,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      autoscalingPolicy:
          pulumi.Input.asOptionalInput<NodeGroupAutoscalingPolicy>(
              map['autoscalingPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      initialSize: pulumi.Input.asOptionalInput<int>(map['initialSize']),
      maintenanceInterval:
          pulumi.Input.asOptionalInput<String>(map['maintenanceInterval']),
      maintenancePolicy:
          pulumi.Input.asOptionalInput<String>(map['maintenancePolicy']),
      maintenanceWindow:
          pulumi.Input.asOptionalInput<NodeGroupMaintenanceWindow>(
              map['maintenanceWindow']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeTemplate: pulumi.Input.asInput<String>(map['nodeTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      shareSettings: pulumi.Input.asOptionalInput<NodeGroupShareSettings>(
          map['shareSettings']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
