// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_rule_response.dart';

/// Result data returned by getHttpRoute.
class GetHttpRouteResult {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;

  /// Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final List<String> gateways;

  /// Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  final List<String> hostnames;

  /// Optional. Set of label tags associated with the HttpRoute resource.
  final Map<String, String> labels;

  /// Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final List<String> meshes;

  /// Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  final String name;

  /// Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  final List<HttpRouteRouteRuleResponse> rules;

  /// Server-defined URL of this resource
  final String selfLink;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetHttpRouteResult].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [hostnames] Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  /// [labels] Optional. Set of label tags associated with the HttpRoute resource.
  /// [meshes] Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  /// [rules] Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  /// [selfLink] Server-defined URL of this resource
  /// [updateTime] The timestamp when the resource was updated.
  GetHttpRouteResult({
    required this.createTime,
    required this.description,
    required this.gateways,
    required this.hostnames,
    required this.labels,
    required this.meshes,
    required this.name,
    required this.rules,
    required this.selfLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'gateways': gateways,
      'hostnames': hostnames,
      'labels': labels,
      'meshes': meshes,
      'name': name,
      'rules':
          pulumi.Input.encodeList<
            HttpRouteRouteRuleResponse,
            Map<String, dynamic>
          >(rules, (value) => value.toMap()),
      'selfLink': selfLink,
      'updateTime': updateTime,
    };
  }

  factory GetHttpRouteResult.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      gateways: (map['gateways'] as List).cast<String>(),
      hostnames: (map['hostnames'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      meshes: (map['meshes'] as List).cast<String>(),
      name: map['name'] as String,
      rules: pulumi.Input.decodeList<HttpRouteRouteRuleResponse>(
        map['rules'],
        (value) => HttpRouteRouteRuleResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
