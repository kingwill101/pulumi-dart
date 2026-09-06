// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route.dart';

/// List of IPv4 and IPv6 aggregate routes.
class AggregateRouteConfiguration {
  /// List of IPv4 Route prefixes.
  final pulumi.Input<List<AggregateRoute>?>? ipv4Routes;
  /// List of Ipv6Routes prefixes.
  final pulumi.Input<List<AggregateRoute>?>? ipv6Routes;

  /// Creates a new [AggregateRouteConfiguration].
  /// [ipv4Routes] List of IPv4 Route prefixes.
  /// [ipv6Routes] List of Ipv6Routes prefixes.
  const AggregateRouteConfiguration({
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<AggregateRoute>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<AggregateRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<AggregateRoute>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<AggregateRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregateRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return AggregateRouteConfiguration(
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateRoute>(guardedValue, (value) => AggregateRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateRoute>(guardedValue, (value) => AggregateRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
