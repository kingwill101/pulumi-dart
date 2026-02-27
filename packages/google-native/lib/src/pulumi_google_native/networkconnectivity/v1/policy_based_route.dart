import 'package:pulumi/pulumi.dart' hide Config;
import 'filter_response4.dart';
import 'interconnect_attachment_response.dart';
import 'policy_based_route_args.dart';
import 'virtual_machine_response.dart';
import 'warnings_response.dart';

/// Creates a new policy-based route in a given project and location.
/// Auto-naming is currently not supported for this resource.
class PolicyBasedRoute extends CustomResource {
  /// Time when the policy-based route was created.
  late final Output<String> createTime;

  /// Optional. An optional description of this resource. Provide this field when you create the resource.
  late final Output<String> description;

  /// The filter to match L4 traffic.
  late final Output<FilterResponse4> filter;

  /// Optional. The interconnect attachments that this policy-based route applies to.
  late final Output<InterconnectAttachmentResponse> interconnectAttachment;

  /// Type of this resource. Always networkconnectivity#policyBasedRoute for policy-based Route resources.
  late final Output<String> kind;

  /// User-defined labels.
  late final Output<Map<String, String>> labels;

  /// Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  late final Output<String> name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final Output<String> network;

  /// Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  late final Output<String> nextHopIlbIp;

  /// Optional. Other routes that will be referenced to determine the next hop of the packet.
  late final Output<String> nextHopOtherRoutes;

  /// Required. Unique id for the policy-based route to create.
  late final Output<String> policyBasedRouteId;

  /// Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  late final Output<int> priority;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined fully-qualified URL for this resource.
  late final Output<String> selfLink;

  /// Time when the policy-based route was updated.
  late final Output<String> updateTime;

  /// Optional. VM instances to which this policy-based route applies to.
  late final Output<VirtualMachineResponse> virtualMachine;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  late final Output<List<WarningsResponse>> warnings;

  PolicyBasedRoute(
    String name, {
    PolicyBasedRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:PolicyBasedRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<FilterResponse4>('filter');
    this.interconnectAttachment =
        registerOutput<InterconnectAttachmentResponse>(
            'interconnectAttachment');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nextHopIlbIp = registerOutput<String>('nextHopIlbIp');
    this.nextHopOtherRoutes = registerOutput<String>('nextHopOtherRoutes');
    this.policyBasedRouteId = registerOutput<String>('policyBasedRouteId');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachine =
        registerOutput<VirtualMachineResponse>('virtualMachine');
    this.warnings = registerOutput<List<WarningsResponse>>('warnings');
  }
}
