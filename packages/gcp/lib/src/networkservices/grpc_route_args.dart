// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule.dart';

/// {@template pulumi_networkservices_grpc_route_grpc_route_args_doc}
/// The set of arguments for GrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_grpc_route_grpc_route_args_doc}
class GrpcRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  final pulumi.Input<List<String>>? gateways;

  /// Required. Service hostnames with an optional port for which this route describes traffic.
  final pulumi.Input<List<String>> hostnames;

  /// Set of label tags associated with the GrpcRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final pulumi.Input<String>? location;

  /// List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  final pulumi.Input<List<String>>? meshes;

  /// Name of the GrpcRoute resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRule>> rules;

  /// Creates a new [GrpcRouteArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [gateways] List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [hostnames] Required. Service hostnames with an optional port for which this route describes traffic.
  /// [labels] Set of label tags associated with the GrpcRoute resource.
  /// [location] Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  /// [meshes] List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the GrpcRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules that define how traffic is routed and handled.
  GrpcRouteArgs({
    String? description,
    List<String>? gateways,
    required List<String> hostnames,
    Map<String, String>? labels,
    String? location,
    List<String>? meshes,
    String? name,
    String? project,
    required List<GrpcRouteRule> rules,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
        hostnames = pulumi.Input.asInput<List<String>>(hostnames),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rules = pulumi.Input.asInput<List<GrpcRouteRule>>(rules);

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
    map['rules'] = pulumi.Input.mapInputValue<List<GrpcRouteRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<GrpcRouteRule, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    return map;
  }

  factory GrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GrpcRouteArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      gateways: map['gateways'] == null
          ? null
          : (map['gateways'] as List).cast<String>(),
      hostnames: (map['hostnames'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      meshes:
          map['meshes'] == null ? null : (map['meshes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: pulumi.Input.decodeList<GrpcRouteRule>(
          map['rules'],
          (value) =>
              GrpcRouteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
