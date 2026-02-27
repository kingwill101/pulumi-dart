// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tls_route_route_rule2.dart';

/// The set of arguments for TlsRoute.
class TlsRouteArgs2 {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final Input<List<String>>? gateways;

  /// Optional. Set of label tags associated with the TlsRoute resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final Input<List<String>>? meshes;

  /// Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name>`.
  final Input<String>? name;
  final Input<String>? project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final Input<List<TlsRouteRouteRule2>> rules;

  /// Required. Short name of the TlsRoute resource to be created.
  final Input<String> tlsRouteId;

  TlsRouteArgs2({
    this.description,
    this.gateways,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    required this.rules,
    required this.tlsRouteId,
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
    map['rules'] = Input.mapInputValue<List<TlsRouteRouteRule2>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => Input.encodeList<TlsRouteRouteRule2, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['tlsRouteId'] = tlsRouteId;
    return map;
  }

  factory TlsRouteArgs2.fromMap(Map<String, dynamic> map) {
    return TlsRouteArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      gateways: Input.asOptionalInput<List<String>>(map['gateways']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      meshes: Input.asOptionalInput<List<String>>(map['meshes']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asInput<List<TlsRouteRouteRule2>>(map['rules']),
      tlsRouteId: Input.asInput<String>(map['tlsRouteId']),
    );
  }
}
