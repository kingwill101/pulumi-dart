import 'package:pulumi/pulumi.dart' as pulumi;
import '../tcp_route_rule/tcp_route_rule.dart';
import 'tcp_route_args.dart';

/// TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/Gateway resource.
///
///
/// To get more information about TcpRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.tcpRoutes)
/// * How-to Guides
/// * [Setup TCP Services](https://cloud.google.com/traffic-director/docs/set-up-tcp-route)
///
/// ## Example Usage
///
/// ### Network Services Tcp Route Basic
///
///
///
/// ### Network Services Tcp Route Actions
///
///
///
/// ### Network Services Tcp Route Mesh Basic
///
///
///
/// ### Network Services Tcp Route Gateway Basic
///
///
///
///
/// ## Import
///
/// TcpRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/tcpRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TcpRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default projects/{{project}}/locations/global/tcpRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default {{name}}
/// ```
class TcpRoute extends pulumi.CustomResource {
  /// Time the TcpRoute was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  late final pulumi.Output<List<String>?> gateways;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>
  /// The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>?> meshes;

  /// Name of the TcpRoute resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  /// If there are multiple rules then the action taken will be the first rule to match.
  /// Structure is documented below.
  late final pulumi.Output<List<TcpRouteRule>> rules;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// Time the TcpRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  TcpRoute(
    String name, {
    TcpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tcpRoute:TcpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<TcpRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
