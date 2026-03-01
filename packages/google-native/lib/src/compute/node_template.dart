import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'local_disk_response.dart';
import 'node_template_args.dart';
import 'node_template_node_type_flexibility_response.dart';
import 'server_binding_response.dart';

/// Creates a NodeTemplate resource in the specified project using the data included in the request.
class NodeTemplate extends pulumi.CustomResource {
  late final pulumi.Output<List<AcceleratorConfigResponse>> accelerators;

  /// CPU overcommit.
  late final pulumi.Output<String> cpuOvercommitType;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<List<LocalDiskResponse>> disks;

  /// The type of the resource. Always compute#nodeTemplate for node templates.
  late final pulumi.Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Labels to use for node affinity, which will be used in instance scheduling.
  late final pulumi.Output<Map<String, String>> nodeAffinityLabels;

  /// The node type to use for nodes group that are created from this template.
  late final pulumi.Output<String> nodeType;

  /// Do not use. Instead, use the node_type property.
  late final pulumi.Output<NodeTemplateNodeTypeFlexibilityResponse>
  nodeTypeFlexibility;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  late final pulumi.Output<ServerBindingResponse> serverBinding;

  /// The status of the node template. One of the following values: CREATING, READY, and DELETING.
  late final pulumi.Output<String> status;

  /// An optional, human-readable explanation of the status.
  late final pulumi.Output<String> statusMessage;

  /// Creates a new [NodeTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeTemplate]. {@macro pulumi_compute_alpha_node_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeTemplate(
    String name, {
    NodeTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:NodeTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accelerators = registerOutput<List<AcceleratorConfigResponse>>(
      'accelerators',
    );
    this.cpuOvercommitType = registerOutput<String>('cpuOvercommitType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.disks = registerOutput<List<LocalDiskResponse>>('disks');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.nodeAffinityLabels = registerOutput<Map<String, String>>(
      'nodeAffinityLabels',
    );
    this.nodeType = registerOutput<String>('nodeType');
    this.nodeTypeFlexibility =
        registerOutput<NodeTemplateNodeTypeFlexibilityResponse>(
          'nodeTypeFlexibility',
        );
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.serverBinding = registerOutput<ServerBindingResponse>('serverBinding');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
  }
}
