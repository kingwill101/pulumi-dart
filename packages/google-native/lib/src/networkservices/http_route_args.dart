// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_rule.dart';

/// {@template pulumi_networkservices_v1_http_route_args_doc}
/// The set of arguments for HttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_http_route_args_doc}
class HttpRouteArgs {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;

  /// Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  final pulumi.Input<List<String>> hostnames;

  /// Required. Short name of the HttpRoute resource to be created.
  final pulumi.Input<String> httpRouteId;

  /// Optional. Set of label tags associated with the HttpRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  final pulumi.Input<List<HttpRouteRouteRule>> rules;

  /// Creates a new [HttpRouteArgs].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [hostnames] Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  /// [httpRouteId] Required. Short name of the HttpRoute resource to be created.
  /// [labels] Optional. Set of label tags associated with the HttpRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  /// [project] Optional.
  /// [rules] Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  HttpRouteArgs({
    String? description,
    List<String>? gateways,
    required List<String> hostnames,
    required String httpRouteId,
    Map<String, String>? labels,
    String? location,
    List<String>? meshes,
    String? name,
    String? project,
    required List<HttpRouteRouteRule> rules,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
       hostnames = pulumi.Input.asInput<List<String>>(hostnames),
       httpRouteId = pulumi.Input.asInput<String>(httpRouteId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rules = pulumi.Input.asInput<List<HttpRouteRouteRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'hostnames': hostnames,
      'httpRouteId': httpRouteId,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules':
          pulumi.Input.mapInputValue<
            List<HttpRouteRouteRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  HttpRouteRouteRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HttpRouteArgs.fromMap(Map<String, dynamic> map) {
    return HttpRouteArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      gateways: map['gateways'] == null
          ? null
          : (map['gateways'] as List).cast<String>(),
      hostnames: (map['hostnames'] as List).cast<String>(),
      httpRouteId: map['httpRouteId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      meshes: map['meshes'] == null
          ? null
          : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<HttpRouteRouteRule>(
        map['rules'],
        (value) =>
            HttpRouteRouteRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
