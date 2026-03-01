import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy_response_compute_v1.dart';
import 'node_group_compute_v1_args.dart';
import 'node_group_maintenance_window_response_compute_v1.dart';
import 'share_settings_response_compute_v1.dart';

/// Creates a NodeGroup resource in the specified project using the data included in the request.
class NodeGroupComputeV1 extends pulumi.CustomResource {
  /// Specifies how autoscaling should behave.
  late final pulumi.Output<NodeGroupAutoscalingPolicyResponseComputeV1>
  autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> fingerprint;

  /// Initial count of nodes in the node group.
  late final pulumi.Output<int> initialNodeCount;

  /// The type of the resource. Always compute#nodeGroup for node group.
  late final pulumi.Output<String> kind;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  late final pulumi.Output<String> locationHint;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  late final pulumi.Output<String> maintenancePolicy;
  late final pulumi.Output<NodeGroupMaintenanceWindowResponseComputeV1>
  maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// URL of the node template to create the node group from.
  late final pulumi.Output<String> nodeTemplate;
  late final pulumi.Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Share-settings for the node group
  late final pulumi.Output<ShareSettingsResponseComputeV1> shareSettings;

  /// The total number of nodes in the node group.
  late final pulumi.Output<int> size;
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> zone;

  /// Creates a new [NodeGroupComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroupComputeV1]. {@macro pulumi_compute_v1_node_group_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroupComputeV1(
    String name, {
    NodeGroupComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:NodeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscalingPolicy =
        registerOutput<NodeGroupAutoscalingPolicyResponseComputeV1>(
          'autoscalingPolicy',
        );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.kind = registerOutput<String>('kind');
    this.locationHint = registerOutput<String>('locationHint');
    this.maintenancePolicy = registerOutput<String>('maintenancePolicy');
    this.maintenanceWindow =
        registerOutput<NodeGroupMaintenanceWindowResponseComputeV1>(
          'maintenanceWindow',
        );
    this.name = registerOutput<String>('name');
    this.nodeTemplate = registerOutput<String>('nodeTemplate');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.shareSettings = registerOutput<ShareSettingsResponseComputeV1>(
      'shareSettings',
    );
    this.size = registerOutput<int>('size');
    this.status = registerOutput<String>('status');
    this.zone = registerOutput<String>('zone');
  }
}
