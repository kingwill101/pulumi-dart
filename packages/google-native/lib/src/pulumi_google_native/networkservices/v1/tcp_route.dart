import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_args.dart';
import 'tcp_route_route_rule_response.dart';

/// Creates a new TcpRoute in a given project and location.
class TcpRoute extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final pulumi.Output<List<String>> gateways;

  /// Optional. Set of label tags associated with the TcpRoute resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>> meshes;

  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  late final pulumi.Output<List<TcpRouteRouteRuleResponse>> rules;

  /// Server-defined URL of this resource
  late final pulumi.Output<String> selfLink;

  /// Required. Short name of the TcpRoute resource to be created.
  late final pulumi.Output<String> tcpRouteId;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  TcpRoute(
    String name, {
    TcpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1:TcpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gateways = registerOutput<List<String>>('gateways');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.meshes = registerOutput<List<String>>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<TcpRouteRouteRuleResponse>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.tcpRouteId = registerOutput<String>('tcpRouteId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
