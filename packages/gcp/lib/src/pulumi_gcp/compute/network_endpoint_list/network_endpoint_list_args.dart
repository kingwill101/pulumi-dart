// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_endpoint_list_network_endpoint/network_endpoint_list_network_endpoint.dart';

/// The set of arguments for NetworkEndpointList.
class NetworkEndpointListArgs {
  /// The network endpoint group these endpoints are part of.
  final pulumi.Input<String> networkEndpointGroup;

  /// The network endpoints to be added to the enclosing network endpoint group
  /// (NEG). Each endpoint specifies an IP address and port, along with
  /// additional information depending on the NEG type.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkEndpointListNetworkEndpoint>>?
      networkEndpoints;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Zone where the containing network endpoint group is located.
  final pulumi.Input<String>? zone;

  NetworkEndpointListArgs({
    required this.networkEndpointGroup,
    this.networkEndpoints,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final networkEndpointsValue = networkEndpoints;
    if (networkEndpointsValue != null) {
      map['networkEndpoints'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkEndpointListNetworkEndpoint>,
              List<Map<String, dynamic>>>(
          networkEndpointsValue,
          (value) => pulumi.Input.encodeList<NetworkEndpointListNetworkEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NetworkEndpointListArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointListArgs(
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      networkEndpoints: pulumi.Input.asOptionalInput<
          List<NetworkEndpointListNetworkEndpoint>>(map['networkEndpoints']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
