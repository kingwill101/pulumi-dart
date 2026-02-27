// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_rule_networkservices_v1beta1.dart';

/// The set of arguments for TcpRoute.
class TcpRouteNetworkservicesV1beta1Args {
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
  final pulumi.Input<List<TcpRouteRouteRuleNetworkservicesV1beta1>> rules;

  /// Required. Short name of the TcpRoute resource to be created.
  final pulumi.Input<String> tcpRouteId;

  TcpRouteNetworkservicesV1beta1Args({
    this.description,
    this.gateways,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    required this.rules,
    required this.tcpRouteId,
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
    map['rules'] = pulumi.Input.mapInputValue<
            List<TcpRouteRouteRuleNetworkservicesV1beta1>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<
            TcpRouteRouteRuleNetworkservicesV1beta1,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['tcpRouteId'] = tcpRouteId;
    return map;
  }

  factory TcpRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TcpRouteNetworkservicesV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gateways: pulumi.Input.asOptionalInput<List<String>>(map['gateways']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      meshes: pulumi.Input.asOptionalInput<List<String>>(map['meshes']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules:
          pulumi.Input.asInput<List<TcpRouteRouteRuleNetworkservicesV1beta1>>(
              map['rules']),
      tcpRouteId: pulumi.Input.asInput<String>(map['tcpRouteId']),
    );
  }
}
