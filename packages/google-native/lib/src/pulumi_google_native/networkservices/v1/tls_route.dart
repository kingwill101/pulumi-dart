import 'package:pulumi/pulumi.dart';
import 'tls_route_args.dart';
import 'tls_route_route_rule_response.dart';

/// Creates a new TlsRoute in a given project and location.
class TlsRoute extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final Output<List<String>> gateways;

  /// Optional. Set of label tags associated with the TlsRoute resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  late final Output<List<String>> meshes;

  /// Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name>`.
  late final Output<String> name;
  late final Output<String> project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  late final Output<List<TlsRouteRouteRuleResponse>> rules;

  /// Server-defined URL of this resource
  late final Output<String> selfLink;

  /// Required. Short name of the TlsRoute resource to be created.
  late final Output<String> tlsRouteId;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  TlsRoute(
    String name, {
    TlsRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1:TlsRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gateways = registerOutput<List<String>>('gateways');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.meshes = registerOutput<List<String>>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<TlsRouteRouteRuleResponse>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.tlsRouteId = registerOutput<String>('tlsRouteId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
