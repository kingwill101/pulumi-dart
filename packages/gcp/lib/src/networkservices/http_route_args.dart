// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule.dart';

/// {@template pulumi_networkservices_http_route_http_route_args_doc}
/// The set of arguments for HttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_http_route_http_route_args_doc}
class HttpRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  final pulumi.Input<List<String>>? gateways;

  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  final pulumi.Input<List<String>> hostnames;

  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>.
  /// The attached Mesh should be of a type SIDECAR.
  final pulumi.Input<List<String>>? meshes;

  /// Name of the HttpRoute resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<HttpRouteRule>> rules;

  /// Creates a new [HttpRouteArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [hostnames] Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  /// [labels] Set of label tags associated with the HttpRoute resource.
  /// [meshes] Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the HttpRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules that define how traffic is routed and handled.
  HttpRouteArgs({
    String? description,
    List<String>? gateways,
    required List<String> hostnames,
    Map<String, String>? labels,
    List<String>? meshes,
    String? name,
    String? project,
    required List<HttpRouteRule> rules,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
       hostnames = pulumi.Input.asInput<List<String>>(hostnames),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rules = pulumi.Input.asInput<List<HttpRouteRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'hostnames': hostnames,
      'labels': ?labels,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules':
          pulumi.Input.mapInputValue<
            List<HttpRouteRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<HttpRouteRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
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
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      meshes: map['meshes'] == null
          ? null
          : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<HttpRouteRule>(
        map['rules'],
        (value) =>
            HttpRouteRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
