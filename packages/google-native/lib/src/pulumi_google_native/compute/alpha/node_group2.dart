import 'package:pulumi/pulumi.dart';
import 'node_group_args.dart';
import 'node_group_autoscaling_policy_response.dart';
import 'node_group_maintenance_window_response.dart';
import 'share_settings_response.dart';

/// Creates a NodeGroup resource in the specified project using the data included in the request.
class NodeGroup2 extends CustomResource {
  /// Specifies how autoscaling should behave.
  late final Output<NodeGroupAutoscalingPolicyResponse> autoscalingPolicy;

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

  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  late final Output<String> maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  late final Output<String> maintenancePolicy;
  late final Output<NodeGroupMaintenanceWindowResponse> maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// URL of the node template to create the node group from.
  late final Output<String> nodeTemplate;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Share-settings for the node group
  late final Output<ShareSettingsResponse> shareSettings;

  /// The total number of nodes in the node group.
  late final Output<int> size;
  late final Output<String> status;
  late final Output<String> zone;

  NodeGroup2(
    String name, {
    NodeGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:NodeGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        Output.createUnknown<NodeGroupAutoscalingPolicyResponse>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.fingerprint = Output.createUnknown<String>();
    this.initialNodeCount = Output.createUnknown<int>();
    this.kind = Output.createUnknown<String>();
    this.locationHint = Output.createUnknown<String>();
    this.maintenanceInterval = Output.createUnknown<String>();
    this.maintenancePolicy = Output.createUnknown<String>();
    this.maintenanceWindow =
        Output.createUnknown<NodeGroupMaintenanceWindowResponse>();
    this.name = Output.createUnknown<String>();
    this.nodeTemplate = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.shareSettings = Output.createUnknown<ShareSettingsResponse>();
    this.size = Output.createUnknown<int>();
    this.status = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
