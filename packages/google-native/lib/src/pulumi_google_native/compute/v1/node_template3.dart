import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response3.dart';
import 'local_disk_response3.dart';
import 'node_template_args3.dart';
import 'node_template_node_type_flexibility_response3.dart';
import 'server_binding_response3.dart';

/// Creates a NodeTemplate resource in the specified project using the data included in the request.
class NodeTemplate3 extends CustomResource {
  late final Output<List<AcceleratorConfigResponse3>> accelerators;

  /// CPU overcommit.
  late final Output<String> cpuOvercommitType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;
  late final Output<List<LocalDiskResponse3>> disks;

  /// The type of the resource. Always compute#nodeTemplate for node templates.
  late final Output<String> kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Labels to use for node affinity, which will be used in instance scheduling.
  late final Output<Map<String, String>> nodeAffinityLabels;

  /// The node type to use for nodes group that are created from this template.
  late final Output<String> nodeType;

  /// Do not use. Instead, use the node_type property.
  late final Output<NodeTemplateNodeTypeFlexibilityResponse3>
      nodeTypeFlexibility;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  late final Output<ServerBindingResponse3> serverBinding;

  /// The status of the node template. One of the following values: CREATING, READY, and DELETING.
  late final Output<String> status;

  /// An optional, human-readable explanation of the status.
  late final Output<String> statusMessage;

  NodeTemplate3(
    String name, {
    NodeTemplateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:NodeTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accelerators =
        Output.createUnknown<List<AcceleratorConfigResponse3>>();
    this.cpuOvercommitType = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.disks = Output.createUnknown<List<LocalDiskResponse3>>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nodeAffinityLabels = Output.createUnknown<Map<String, String>>();
    this.nodeType = Output.createUnknown<String>();
    this.nodeTypeFlexibility =
        Output.createUnknown<NodeTemplateNodeTypeFlexibilityResponse3>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.serverBinding = Output.createUnknown<ServerBindingResponse3>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
  }
}
