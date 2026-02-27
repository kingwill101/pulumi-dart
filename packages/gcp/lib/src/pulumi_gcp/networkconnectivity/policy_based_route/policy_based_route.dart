import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_based_route_filter/policy_based_route_filter.dart';
import '../policy_based_route_interconnect_attachment/policy_based_route_interconnect_attachment.dart';
import '../policy_based_route_virtual_machine/policy_based_route_virtual_machine.dart';
import '../policy_based_route_warning/policy_based_route_warning.dart';
import 'policy_based_route_args.dart';

/// Policy-based Routes are more powerful routes that route L4 network traffic based on not just destination IP, but also source IP, protocol and more. A Policy-based Route always take precedence when it conflicts with other types of routes.
///
///
/// To get more information about PolicyBasedRoute, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.global.policyBasedRoutes)
/// * How-to Guides
/// * [Use policy-based routes](https://cloud.google.com/vpc/docs/use-policy-based-routes#api)
///
/// ## Example Usage
///
/// ### Network Connectivity Policy Based Route Basic
///
///
///
/// ### Network Connectivity Policy Based Route Full
///
///
///
///
/// ## Import
///
/// PolicyBasedRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/policyBasedRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PolicyBasedRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default projects/{{project}}/locations/global/policyBasedRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default {{name}}
/// ```
class PolicyBasedRoute extends pulumi.CustomResource {
  /// Time when the policy-based route was created.
  late final pulumi.Output<String> createTime;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The filter to match L4 traffic.
  /// Structure is documented below.
  late final pulumi.Output<PolicyBasedRouteFilter> filter;

  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  late final pulumi.Output<PolicyBasedRouteInterconnectAttachment?>
      interconnectAttachment;

  /// Type of this resource.
  late final pulumi.Output<String> kind;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the policy based route.
  late final pulumi.Output<String> name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final pulumi.Output<String> network;

  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  late final pulumi.Output<String?> nextHopIlbIp;

  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  late final pulumi.Output<String?> nextHopOtherRoutes;

  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  late final pulumi.Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Time when the policy-based route was created.
  late final pulumi.Output<String> updateTime;

  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  late final pulumi.Output<PolicyBasedRouteVirtualMachine?> virtualMachine;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  late final pulumi.Output<List<PolicyBasedRouteWarning>> warnings;

  PolicyBasedRoute(
    String name, {
    PolicyBasedRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filter = registerOutput<PolicyBasedRouteFilter>('filter');
    this.interconnectAttachment =
        registerOutput<PolicyBasedRouteInterconnectAttachment?>(
            'interconnectAttachment');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nextHopIlbIp = registerOutput<String?>('nextHopIlbIp');
    this.nextHopOtherRoutes = registerOutput<String?>('nextHopOtherRoutes');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachine =
        registerOutput<PolicyBasedRouteVirtualMachine?>('virtualMachine');
    this.warnings = registerOutput<List<PolicyBasedRouteWarning>>('warnings');
  }
}
