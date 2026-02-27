// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tls_route_rule/tls_route_rule.dart';

/// The set of arguments for TlsRoute.
class TlsRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  final pulumi.Input<List<String>>? gateways;

  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>
  /// The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the TlsRoute resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<TlsRouteRule>> rules;

  TlsRouteArgs({
    this.description,
    this.gateways,
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
    map['rules'] = pulumi.Input.mapInputValue<List<TlsRouteRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<TlsRouteRule, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    return map;
  }

  factory TlsRouteArgs.fromMap(Map<String, dynamic> map) {
    return TlsRouteArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gateways: pulumi.Input.asOptionalInput<List<String>>(map['gateways']),
      meshes: pulumi.Input.asOptionalInput<List<String>>(map['meshes']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules: pulumi.Input.asInput<List<TlsRouteRule>>(map['rules']),
    );
  }
}
