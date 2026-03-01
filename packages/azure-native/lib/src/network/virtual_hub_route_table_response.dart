// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_response.dart';

/// VirtualHub route table.
class VirtualHubRouteTableResponse {
  /// List of all routes.
  final List<VirtualHubRouteResponse>? routes;

  /// Creates a new [VirtualHubRouteTableResponse].
  /// [routes] List of all routes.
  VirtualHubRouteTableResponse({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?routes == null ? null : pulumi.Input.encodeList<VirtualHubRouteResponse, Map<String, dynamic>>(routes!, (value) => value.toMap()),
    };
  }

  factory VirtualHubRouteTableResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableResponse(
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<VirtualHubRouteResponse>(map['routes'], (value) => VirtualHubRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

