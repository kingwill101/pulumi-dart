import 'package:pulumi/pulumi.dart';
import 'node_group_args3.dart';
import 'node_group_autoscaling_policy_response3.dart';
import 'node_group_maintenance_window_response3.dart';
import 'share_settings_response3.dart';

/// Creates a NodeGroup resource in the specified project using the data included in the request.
class NodeGroup4 extends CustomResource {
  /// Specifies how autoscaling should behave.
  late final Output<NodeGroupAutoscalingPolicyResponse3> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;
  late final Output<String> fingerprint;

  /// Initial count of nodes in the node group.
  late final Output<int> initialNodeCount;

  /// The type of the resource. Always compute#nodeGroup for node group.
  late final Output<String> kind;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  late final Output<String> locationHint;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  late final Output<String> maintenancePolicy;
  late final Output<NodeGroupMaintenanceWindowResponse3> maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// URL of the node template to create the node group from.
  late final Output<String> nodeTemplate;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Share-settings for the node group
  late final Output<ShareSettingsResponse3> shareSettings;

  /// The total number of nodes in the node group.
  late final Output<int> size;
  late final Output<String> status;
  late final Output<String> zone;

  NodeGroup4(
    String name, {
    NodeGroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:NodeGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        registerOutput<NodeGroupAutoscalingPolicyResponse3>(
            'autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.kind = registerOutput<String>('kind');
    this.locationHint = registerOutput<String>('locationHint');
    this.maintenancePolicy = registerOutput<String>('maintenancePolicy');
    this.maintenanceWindow =
        registerOutput<NodeGroupMaintenanceWindowResponse3>(
            'maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.nodeTemplate = registerOutput<String>('nodeTemplate');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.shareSettings =
        registerOutput<ShareSettingsResponse3>('shareSettings');
    this.size = registerOutput<int>('size');
    this.status = registerOutput<String>('status');
    this.zone = registerOutput<String>('zone');
  }
}
