// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_rule.dart';

/// {@template pulumi_networkservices_tcp_route_tcp_route_args_doc}
/// The set of arguments for TcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_tcp_route_tcp_route_args_doc}
class TcpRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  final pulumi.Input<List<String>>? gateways;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>
  /// The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the TcpRoute resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  /// If there are multiple rules then the action taken will be the first rule to match.
  /// Structure is documented below.
  final pulumi.Input<List<TcpRouteRule>> rules;

  /// Creates a new [TcpRouteArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [labels] Set of label tags associated with the TcpRoute resource.
  /// [meshes] Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the TcpRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  TcpRouteArgs({
    String? description,
    List<String>? gateways,
    Map<String, String>? labels,
    List<String>? meshes,
    String? name,
    String? project,
    required List<TcpRouteRule> rules,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rules = pulumi.Input.asInput<List<TcpRouteRule>>(rules);

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
    map['rules'] = pulumi.Input.mapInputValue<List<TcpRouteRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<TcpRouteRule, Map<String, dynamic>>(
            value, (value) => value.toMap()));
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
      meshes:
          map['meshes'] == null ? null : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<TcpRouteRule>(
          map['rules'],
          (value) =>
              TcpRouteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
