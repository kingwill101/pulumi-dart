// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'node_group_autoscaling_policy.dart';
import 'node_group_maintenance_interval.dart';
import 'node_group_maintenance_policy.dart';
import 'node_group_maintenance_window.dart';
import 'share_settings.dart';

/// The set of arguments for NodeGroup.
class NodeGroupArgs {
  /// Specifies how autoscaling should behave.
  final Input<NodeGroupAutoscalingPolicy>? autoscalingPolicy;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Initial count of nodes in the node group.
  final Input<int> initialNodeCount;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final Input<String>? locationHint;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  final Input<NodeGroupMaintenanceInterval>? maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final Input<NodeGroupMaintenancePolicy>? maintenancePolicy;
  final Input<NodeGroupMaintenanceWindow>? maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// URL of the node template to create the node group from.
  final Input<String>? nodeTemplate;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Share-settings for the node group
  final Input<ShareSettings>? shareSettings;
  final Input<String>? zone;

  NodeGroupArgs({
    this.autoscalingPolicy,
    this.description,
    required this.initialNodeCount,
    this.locationHint,
    this.maintenanceInterval,
    this.maintenancePolicy,
    this.maintenanceWindow,
    this.name,
    this.nodeTemplate,
    this.project,
    this.requestId,
    this.shareSettings,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingPolicyValue = autoscalingPolicy;
    if (autoscalingPolicyValue != null) {
      map['autoscalingPolicy'] = Input.mapOptionalInputValue<
              NodeGroupAutoscalingPolicy, Map<String, dynamic>>(
          autoscalingPolicyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['initialNodeCount'] = initialNodeCount;
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] =
          Input.mapOptionalInputValue<NodeGroupMaintenanceInterval, String>(
              maintenanceIntervalValue, (value) => value.value);
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] =
          Input.mapOptionalInputValue<NodeGroupMaintenancePolicy, String>(
              maintenancePolicyValue, (value) => value.value);
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = Input.mapOptionalInputValue<
              NodeGroupMaintenanceWindow, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeTemplateValue = nodeTemplate;
    if (nodeTemplateValue != null) {
      map['nodeTemplate'] = nodeTemplateValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] =
          Input.mapOptionalInputValue<ShareSettings, Map<String, dynamic>>(
              shareSettingsValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      autoscalingPolicy: Input.asOptionalInput<NodeGroupAutoscalingPolicy>(
          map['autoscalingPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      initialNodeCount: Input.asInput<int>(map['initialNodeCount']),
      locationHint: Input.asOptionalInput<String>(map['locationHint']),
      maintenanceInterval: Input.asOptionalInput<NodeGroupMaintenanceInterval>(
          map['maintenanceInterval']),
      maintenancePolicy: Input.asOptionalInput<NodeGroupMaintenancePolicy>(
          map['maintenancePolicy']),
      maintenanceWindow: Input.asOptionalInput<NodeGroupMaintenanceWindow>(
          map['maintenanceWindow']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeTemplate: Input.asOptionalInput<String>(map['nodeTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      shareSettings: Input.asOptionalInput<ShareSettings>(map['shareSettings']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
