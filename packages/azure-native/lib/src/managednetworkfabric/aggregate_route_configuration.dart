// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route.dart';

/// List of IPv4 and IPv6 aggregate routes.
class AggregateRouteConfiguration {
  /// List of IPv4 Route prefixes.
  final List<AggregateRoute>? ipv4Routes;
  /// List of Ipv6Routes prefixes.
  final List<AggregateRoute>? ipv6Routes;

  /// Creates a new [AggregateRouteConfiguration].
  /// [ipv4Routes] List of IPv4 Route prefixes.
  /// [ipv6Routes] List of Ipv6Routes prefixes.
  AggregateRouteConfiguration({
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Routes': ?ipv4Routes == null ? null : pulumi.Input.encodeList<AggregateRoute, Map<String, dynamic>>(ipv4Routes!, (value) => value.toMap()),
      'ipv6Routes': ?ipv6Routes == null ? null : pulumi.Input.encodeList<AggregateRoute, Map<String, dynamic>>(ipv6Routes!, (value) => value.toMap()),
    };
  }

  factory AggregateRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return AggregateRouteConfiguration(
      ipv4Routes: map['ipv4Routes'] == null ? null : pulumi.Input.decodeList<AggregateRoute>(map['ipv4Routes'], (value) => AggregateRoute.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Routes: map['ipv6Routes'] == null ? null : pulumi.Input.decodeList<AggregateRoute>(map['ipv6Routes'], (value) => AggregateRoute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

