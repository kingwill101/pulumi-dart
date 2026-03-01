// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_rule.dart';

/// {@template pulumi_networkservices_tls_route_tls_route_args_doc}
/// The set of arguments for TlsRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_tls_route_tls_route_args_doc}
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

  /// Creates a new [TlsRouteArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [meshes] Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the TlsRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules that define how traffic is routed and handled.
  TlsRouteArgs({
    String? description,
    List<String>? gateways,
    List<String>? meshes,
    String? name,
    String? project,
    required List<TlsRouteRule> rules,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
       meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rules = pulumi.Input.asInput<List<TlsRouteRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules':
          pulumi.Input.mapInputValue<
            List<TlsRouteRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<TlsRouteRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory TlsRouteArgs.fromMap(Map<String, dynamic> map) {
    return TlsRouteArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      gateways: map['gateways'] == null
          ? null
          : (map['gateways'] as List).cast<String>(),
      meshes: map['meshes'] == null
          ? null
          : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<TlsRouteRule>(
        map['rules'],
        (value) => TlsRouteRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
