// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tcp_route_route_rule_response.dart';

/// Result data returned by getTcpRoute.
class GetTcpRouteResult {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;

  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final List<String> gateways;

  /// Optional. Set of label tags associated with the TcpRoute resource.
  final Map<String, String> labels;

  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final List<String> meshes;

  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  final String name;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final List<TcpRouteRouteRuleResponse> rules;

  /// Server-defined URL of this resource
  final String selfLink;

  /// The timestamp when the resource was updated.
  final String updateTime;

  GetTcpRouteResult({
    required this.createTime,
    required this.description,
    required this.gateways,
    required this.labels,
    required this.meshes,
    required this.name,
    required this.rules,
    required this.selfLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['gateways'] = gateways;
    map['labels'] = labels;
    map['meshes'] = meshes;
    map['name'] = name;
    map['rules'] =
        Input.encodeList<TcpRouteRouteRuleResponse, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTcpRouteResult.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      gateways: (map['gateways'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      meshes: (map['meshes'] as List).cast<String>(),
      name: map['name'] as String,
      rules: Input.decodeList<TcpRouteRouteRuleResponse>(
          map['rules'],
          (value) => TcpRouteRouteRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
