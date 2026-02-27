// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../http_route_rule/http_route_rule.dart';

/// The set of arguments for HttpRoute.
class HttpRouteArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  final Input<List<String>>? gateways;

  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  final Input<List<String>> hostnames;

  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>.
  /// The attached Mesh should be of a type SIDECAR.
  final Input<List<String>>? meshes;

  /// Name of the HttpRoute resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final Input<List<HttpRouteRule>> rules;

  HttpRouteArgs({
    this.description,
    this.gateways,
    required this.hostnames,
    this.labels,
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
        Input.mapInputValue<List<HttpRouteRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<HttpRouteRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory HttpRouteArgs.fromMap(Map<String, dynamic> map) {
    return HttpRouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      gateways: Input.asOptionalInput<List<String>>(map['gateways']),
      hostnames: Input.asInput<List<String>>(map['hostnames']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      meshes: Input.asOptionalInput<List<String>>(map['meshes']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asInput<List<HttpRouteRule>>(map['rules']),
    );
  }
}
