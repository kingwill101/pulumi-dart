// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route_response.dart';

/// List of IPv4 and IPv6 aggregate routes.
class AggregateRouteConfigurationResponse {
  /// List of IPv4 Route prefixes.
  final pulumi.Input<List<AggregateRouteResponse>?>? ipv4Routes;
  /// List of Ipv6Routes prefixes.
  final pulumi.Input<List<AggregateRouteResponse>?>? ipv6Routes;

  /// Creates a new [AggregateRouteConfigurationResponse].
  /// [ipv4Routes] List of IPv4 Route prefixes.
  /// [ipv6Routes] List of Ipv6Routes prefixes.
  const AggregateRouteConfigurationResponse({
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<AggregateRouteResponse>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<AggregateRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<AggregateRouteResponse>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<AggregateRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AggregateRouteConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AggregateRouteConfigurationResponse(
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateRouteResponse>(guardedValue, (value) => AggregateRouteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateRouteResponse>(guardedValue, (value) => AggregateRouteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
