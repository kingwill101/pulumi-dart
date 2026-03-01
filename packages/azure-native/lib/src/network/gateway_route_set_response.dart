// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_source_details_response.dart';

class GatewayRouteSetResponse {
  /// List of different Route Sources
  final Map<String, List<RouteSourceDetailsResponse>>? details;
  /// List of different locations from where the routes are learned
  final List<String>? locations;
  /// Route Set name
  final String? name;

  /// Creates a new [GatewayRouteSetResponse].
  /// [details] List of different Route Sources
  /// [locations] List of different locations from where the routes are learned
  /// [name] Route Set name
  GatewayRouteSetResponse({
    this.details,
    this.locations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : pulumi.Input.encodeMapValues<List<RouteSourceDetailsResponse>, List<Map<String, dynamic>>>(details!, (value) => pulumi.Input.encodeList<RouteSourceDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?locations,
      'name': ?name,
    };
  }

  factory GatewayRouteSetResponse.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSetResponse(
      details: map['details'] == null ? null : pulumi.Input.decodeMapValues<List<RouteSourceDetailsResponse>>(map['details'], (value) => pulumi.Input.decodeList<RouteSourceDetailsResponse>(value, (value) => RouteSourceDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

