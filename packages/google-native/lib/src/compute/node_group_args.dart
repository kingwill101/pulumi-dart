// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy.dart';
import 'node_group_maintenance_interval.dart';
import 'node_group_maintenance_policy.dart';
import 'node_group_maintenance_window.dart';
import 'share_settings.dart';

/// {@template pulumi_compute_alpha_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_node_group_args_doc}
class NodeGroupArgs {
  /// Specifies how autoscaling should behave.
  final pulumi.Input<NodeGroupAutoscalingPolicy>? autoscalingPolicy;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Initial count of nodes in the node group.
  final pulumi.Input<int> initialNodeCount;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final pulumi.Input<String>? locationHint;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  final pulumi.Input<NodeGroupMaintenanceInterval>? maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final pulumi.Input<NodeGroupMaintenancePolicy>? maintenancePolicy;
  final pulumi.Input<NodeGroupMaintenanceWindow>? maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the node template to create the node group from.
  final pulumi.Input<String>? nodeTemplate;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Share-settings for the node group
  final pulumi.Input<ShareSettings>? shareSettings;
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeGroupArgs].
  /// [autoscalingPolicy] Specifies how autoscaling should behave.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [initialNodeCount] Initial count of nodes in the node group.
  /// [locationHint] An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  /// [maintenanceWindow] Optional.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeTemplate] URL of the node template to create the node group from.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [shareSettings] Share-settings for the node group
  /// [zone] Optional.
  NodeGroupArgs({
    NodeGroupAutoscalingPolicy? autoscalingPolicy,
    String? description,
    required int initialNodeCount,
    String? locationHint,
    NodeGroupMaintenanceInterval? maintenanceInterval,
    NodeGroupMaintenancePolicy? maintenancePolicy,
    NodeGroupMaintenanceWindow? maintenanceWindow,
    String? name,
    String? nodeTemplate,
    String? project,
    String? requestId,
    ShareSettings? shareSettings,
    String? zone,
  })  : autoscalingPolicy =
            pulumi.Input.asOptionalInput<NodeGroupAutoscalingPolicy>(
                autoscalingPolicy),
        description = pulumi.Input.asOptionalInput<String>(description),
        initialNodeCount = pulumi.Input.asInput<int>(initialNodeCount),
        locationHint = pulumi.Input.asOptionalInput<String>(locationHint),
        maintenanceInterval =
            pulumi.Input.asOptionalInput<NodeGroupMaintenanceInterval>(
                maintenanceInterval),
        maintenancePolicy =
            pulumi.Input.asOptionalInput<NodeGroupMaintenancePolicy>(
                maintenancePolicy),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<NodeGroupMaintenanceWindow>(
                maintenanceWindow),
        name = pulumi.Input.asOptionalInput<String>(name),
        nodeTemplate = pulumi.Input.asOptionalInput<String>(nodeTemplate),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        shareSettings =
            pulumi.Input.asOptionalInput<ShareSettings>(shareSettings),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
    map['initialNodeCount'] = initialNodeCount;
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupMaintenanceInterval,
          String>(maintenanceIntervalValue, (value) => value.value);
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
          NodeGroupMaintenancePolicy,
          String>(maintenancePolicyValue, (value) => value.value);
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
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<ShareSettings,
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
      autoscalingPolicy: map['autoscalingPolicy'] == null
          ? null
          : NodeGroupAutoscalingPolicy.fromMap(
              (map['autoscalingPolicy'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      initialNodeCount: map['initialNodeCount'] as int,
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : NodeGroupMaintenanceInterval.fromValue(
              map['maintenanceInterval'] as String),
      maintenancePolicy: map['maintenancePolicy'] == null
          ? null
          : NodeGroupMaintenancePolicy.fromValue(
              map['maintenancePolicy'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : NodeGroupMaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nodeTemplate:
          map['nodeTemplate'] == null ? null : map['nodeTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      shareSettings: map['shareSettings'] == null
          ? null
          : ShareSettings.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
