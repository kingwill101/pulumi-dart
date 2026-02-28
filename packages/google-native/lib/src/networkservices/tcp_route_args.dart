// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_rule.dart';

/// {@template pulumi_networkservices_v1_tcp_route_args_doc}
/// The set of arguments for TcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_tcp_route_args_doc}
class TcpRouteArgs {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;

  /// Optional. Set of label tags associated with the TcpRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final pulumi.Input<List<TcpRouteRouteRule>> rules;

  /// Required. Short name of the TcpRoute resource to be created.
  final pulumi.Input<String> tcpRouteId;

  /// Creates a new [TcpRouteArgs].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [labels] Optional. Set of label tags associated with the TcpRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  /// [project] Optional.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  /// [tcpRouteId] Required. Short name of the TcpRoute resource to be created.
  TcpRouteArgs({
    String? description,
    List<String>? gateways,
    Map<String, String>? labels,
    String? location,
    List<String>? meshes,
    String? name,
    String? project,
    required List<TcpRouteRouteRule> rules,
    required String tcpRouteId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rules = pulumi.Input.asInput<List<TcpRouteRouteRule>>(rules),
        tcpRouteId = pulumi.Input.asInput<String>(tcpRouteId);

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
    map['rules'] = pulumi.Input.mapInputValue<List<TcpRouteRouteRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            pulumi.Input.encodeList<TcpRouteRouteRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['tcpRouteId'] = tcpRouteId;
    return map;
  }

  factory TcpRouteArgs.fromMap(Map<String, dynamic> map) {
    return TcpRouteArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      gateways: map['gateways'] == null
          ? null
          : (map['gateways'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      meshes:
          map['meshes'] == null ? null : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<TcpRouteRouteRule>(
          map['rules'],
          (value) => TcpRouteRouteRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      tcpRouteId: map['tcpRouteId'] as String,
    );
  }
}
