// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route.dart';

/// Route table resource.
class RouteTable {
  /// Collection of routes contained within a route table.
  final pulumi.Input<List<Route>>? routes;

  /// Creates a new [RouteTable].
  /// [routes] Collection of routes contained within a route table.
  const RouteTable({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?pulumi.Input.mapOptionalInputValue<List<Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouteTable.fromMap(Map<String, dynamic> map) {
    return RouteTable(
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Route>(guardedValue, (value) => Route.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
