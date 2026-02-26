import 'package:pulumi/pulumi.dart';
import 'tcp_route_args.dart';
import 'tcp_route_route_rule_response.dart';

/// Creates a new TcpRoute in a given project and location.
class TcpRoute extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final Output<List<String>> gateways;

  /// Optional. Set of label tags associated with the TcpRoute resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  late final Output<List<String>> meshes;

  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  late final Output<String> name;
  late final Output<String> project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  late final Output<List<TcpRouteRouteRuleResponse>> rules;

  /// Server-defined URL of this resource
  late final Output<String> selfLink;

  /// Required. Short name of the TcpRoute resource to be created.
  late final Output<String> tcpRouteId;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  TcpRoute(
    String name, {
    TcpRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1:TcpRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.gateways = Output.createUnknown<List<String>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.meshes = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rules = Output.createUnknown<List<TcpRouteRouteRuleResponse>>();
    this.selfLink = Output.createUnknown<String>();
    this.tcpRouteId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
