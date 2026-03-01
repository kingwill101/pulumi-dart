// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route.dart';

/// Route table resource.
class RouteTable {
  /// Collection of routes contained within a route table.
  final List<Route>? routes;

  /// Creates a new [RouteTable].
  /// [routes] Collection of routes contained within a route table.
  RouteTable({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?routes == null ? null : pulumi.Input.encodeList<Route, Map<String, dynamic>>(routes!, (value) => value.toMap()),
    };
  }

  factory RouteTable.fromMap(Map<String, dynamic> map) {
    return RouteTable(
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<Route>(map['routes'], (value) => Route.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

