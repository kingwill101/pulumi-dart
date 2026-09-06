// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';

/// Route table resource.
class RouteTableResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Collection of routes contained within a route table.
  final pulumi.Input<List<RouteResponse>?>? routes;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RouteTableResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] Resource name.
  /// [routes] Collection of routes contained within a route table.
  /// [type] Resource type.
  const RouteTableResponse({
    required this.etag,
    required this.name,
    this.routes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'name': name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory RouteTableResponse.fromMap(Map<String, dynamic> map) {
    return RouteTableResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteResponse>(guardedValue, (value) => RouteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
