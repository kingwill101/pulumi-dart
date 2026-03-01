// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route_response.dart';

/// List of IPv4 and IPv6 aggregate routes.
class AggregateRouteConfigurationResponse {
  /// List of IPv4 Route prefixes.
  final List<AggregateRouteResponse>? ipv4Routes;
  /// List of Ipv6Routes prefixes.
  final List<AggregateRouteResponse>? ipv6Routes;

  /// Creates a new [AggregateRouteConfigurationResponse].
  /// [ipv4Routes] List of IPv4 Route prefixes.
  /// [ipv6Routes] List of Ipv6Routes prefixes.
  AggregateRouteConfigurationResponse({
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Routes': ?ipv4Routes == null ? null : pulumi.Input.encodeList<AggregateRouteResponse, Map<String, dynamic>>(ipv4Routes!, (value) => value.toMap()),
      'ipv6Routes': ?ipv6Routes == null ? null : pulumi.Input.encodeList<AggregateRouteResponse, Map<String, dynamic>>(ipv6Routes!, (value) => value.toMap()),
    };
  }

  factory AggregateRouteConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AggregateRouteConfigurationResponse(
      ipv4Routes: map['ipv4Routes'] == null ? null : pulumi.Input.decodeList<AggregateRouteResponse>(map['ipv4Routes'], (value) => AggregateRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Routes: map['ipv6Routes'] == null ? null : pulumi.Input.decodeList<AggregateRouteResponse>(map['ipv6Routes'], (value) => AggregateRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

