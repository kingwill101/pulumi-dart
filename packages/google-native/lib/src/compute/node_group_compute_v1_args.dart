// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy_compute_v1.dart';
import 'node_group_maintenance_policy_compute_v1.dart';
import 'node_group_maintenance_window_compute_v1.dart';
import 'share_settings_compute_v1.dart';

/// {@template pulumi_compute_v1_node_group_compute_v1_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_node_group_compute_v1_args_doc}
class NodeGroupComputeV1Args {
  /// Specifies how autoscaling should behave.
  final pulumi.Input<NodeGroupAutoscalingPolicyComputeV1>? autoscalingPolicy;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Initial count of nodes in the node group.
  final pulumi.Input<int> initialNodeCount;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final pulumi.Input<String>? locationHint;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final pulumi.Input<NodeGroupMaintenancePolicyComputeV1>? maintenancePolicy;
  final pulumi.Input<NodeGroupMaintenanceWindowComputeV1>? maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the node template to create the node group from.
  final pulumi.Input<String>? nodeTemplate;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Share-settings for the node group
  final pulumi.Input<ShareSettingsComputeV1>? shareSettings;
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeGroupComputeV1Args].
  /// [autoscalingPolicy] Specifies how autoscaling should behave.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [initialNodeCount] Initial count of nodes in the node group.
  /// [locationHint] An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  /// [maintenanceWindow] Optional.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeTemplate] URL of the node template to create the node group from.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [shareSettings] Share-settings for the node group
  /// [zone] Optional.
  NodeGroupComputeV1Args({
    NodeGroupAutoscalingPolicyComputeV1? autoscalingPolicy,
    String? description,
    required int initialNodeCount,
    String? locationHint,
    NodeGroupMaintenancePolicyComputeV1? maintenancePolicy,
    NodeGroupMaintenanceWindowComputeV1? maintenanceWindow,
    String? name,
    String? nodeTemplate,
    String? project,
    String? requestId,
    ShareSettingsComputeV1? shareSettings,
    String? zone,
  }) : autoscalingPolicy =
           pulumi.Input.asOptionalInput<NodeGroupAutoscalingPolicyComputeV1>(
             autoscalingPolicy,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       initialNodeCount = pulumi.Input.asInput<int>(initialNodeCount),
       locationHint = pulumi.Input.asOptionalInput<String>(locationHint),
       maintenancePolicy =
           pulumi.Input.asOptionalInput<NodeGroupMaintenancePolicyComputeV1>(
             maintenancePolicy,
           ),
       maintenanceWindow =
           pulumi.Input.asOptionalInput<NodeGroupMaintenanceWindowComputeV1>(
             maintenanceWindow,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       nodeTemplate = pulumi.Input.asOptionalInput<String>(nodeTemplate),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       shareSettings = pulumi.Input.asOptionalInput<ShareSettingsComputeV1>(
         shareSettings,
       ),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupAutoscalingPolicyComputeV1,
            Map<String, dynamic>
          >(autoscalingPolicy, (value) => value.toMap()),
      'description': ?description,
      'initialNodeCount': initialNodeCount,
      'locationHint': ?locationHint,
      'maintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupMaintenancePolicyComputeV1,
            String
          >(maintenancePolicy, (value) => value.value),
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupMaintenanceWindowComputeV1,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'nodeTemplate': ?nodeTemplate,
      'project': ?project,
      'requestId': ?requestId,
      'shareSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettingsComputeV1,
            Map<String, dynamic>
          >(shareSettings, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory NodeGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NodeGroupComputeV1Args(
      autoscalingPolicy: map['autoscalingPolicy'] == null
          ? null
          : NodeGroupAutoscalingPolicyComputeV1.fromMap(
              (map['autoscalingPolicy'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      initialNodeCount: map['initialNodeCount'] as int,
      locationHint: map['locationHint'] == null
          ? null
          : map['locationHint'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null
          ? null
          : NodeGroupMaintenancePolicyComputeV1.fromValue(
              map['maintenancePolicy'] as String,
            ),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : NodeGroupMaintenanceWindowComputeV1.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      nodeTemplate: map['nodeTemplate'] == null
          ? null
          : map['nodeTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      shareSettings: map['shareSettings'] == null
          ? null
          : ShareSettingsComputeV1.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>(),
            ),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
