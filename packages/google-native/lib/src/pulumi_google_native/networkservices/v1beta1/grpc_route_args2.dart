// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'grpc_route_route_rule2.dart';

/// The set of arguments for GrpcRoute.
class GrpcRouteArgs2 {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final Input<List<String>>? gateways;

  /// Required. Short name of the GrpcRoute resource to be created.
  final Input<String> grpcRouteId;

  /// Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same route, it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. "xds:///service:123"), otherwise they must supply the URI without a port (i.e. "xds:///service").
  final Input<List<String>> hostnames;

  /// Optional. Set of label tags associated with the GrpcRoute resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`
  final Input<List<String>>? meshes;

  /// Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`
  final Input<String>? name;
  final Input<String>? project;

  /// A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
  final Input<List<GrpcRouteRouteRule2>> rules;

  GrpcRouteArgs2({
    this.description,
    this.gateways,
    required this.grpcRouteId,
    required this.hostnames,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gatewaysValue = gateways;
    if (gatewaysValue != null) {
      map['gateways'] = gatewaysValue;
    }
    map['grpcRouteId'] = grpcRouteId;
    map['hostnames'] = hostnames;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final meshesValue = meshes;
    if (meshesValue != null) {
      map['meshes'] = meshesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rules'] = Input.mapInputValue<List<GrpcRouteRouteRule2>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => Input.encodeList<GrpcRouteRouteRule2, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    return map;
  }

  factory GrpcRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      gateways: Input.asOptionalInput<List<String>>(map['gateways']),
      grpcRouteId: Input.asInput<String>(map['grpcRouteId']),
      hostnames: Input.asInput<List<String>>(map['hostnames']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      meshes: Input.asOptionalInput<List<String>>(map['meshes']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asInput<List<GrpcRouteRouteRule2>>(map['rules']),
    );
  }
}
