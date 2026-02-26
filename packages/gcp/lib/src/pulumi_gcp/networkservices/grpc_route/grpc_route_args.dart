// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../grpc_route_rule/grpc_route_rule.dart';

/// The set of arguments for GrpcRoute.
class GrpcRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  final Input<List<String>>? gateways;

  /// Required. Service hostnames with an optional port for which this route describes traffic.
  final Input<List<String>> hostnames;

  /// Set of label tags associated with the GrpcRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final Input<String>? location;

  /// List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  final Input<List<String>>? meshes;

  /// Name of the GrpcRoute resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final Input<List<GrpcRouteRule>> rules;

  GrpcRouteArgs({
    this.description,
    this.gateways,
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
    map['rules'] =
        Input.mapInputValue<List<GrpcRouteRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<GrpcRouteRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GrpcRouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      gateways: Input.asOptionalInput<List<String>>(map['gateways']),
      hostnames: Input.asInput<List<String>>(map['hostnames']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      meshes: Input.asOptionalInput<List<String>>(map['meshes']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asInput<List<GrpcRouteRule>>(map['rules']),
    );
  }
}
