import 'package:pulumi/pulumi.dart';
import 'grpc_route_args2.dart';
import 'grpc_route_route_rule_response2.dart';

/// Creates a new GrpcRoute in a given project and location.
class GrpcRoute2 extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final Output<List<String>> gateways;

  /// Required. Short name of the GrpcRoute resource to be created.
  late final Output<String> grpcRouteId;

  /// Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same route, it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. "xds:///service:123"), otherwise they must supply the URI without a port (i.e. "xds:///service").
  late final Output<List<String>> hostnames;

  /// Optional. Set of label tags associated with the GrpcRoute resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`
  late final Output<List<String>> meshes;

  /// Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`
  late final Output<String> name;
  late final Output<String> project;

  /// A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
  late final Output<List<GrpcRouteRouteRuleResponse2>> rules;

  /// Server-defined URL of this resource
  late final Output<String> selfLink;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  GrpcRoute2(
    String name, {
    GrpcRouteArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:GrpcRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gateways = registerOutput<List<String>>('gateways');
    this.grpcRouteId = registerOutput<String>('grpcRouteId');
    this.hostnames = registerOutput<List<String>>('hostnames');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.meshes = registerOutput<List<String>>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<GrpcRouteRouteRuleResponse2>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
