// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';
import 'static_route_properties_response.dart';

/// NPB Static Route Configuration properties.
class NpbStaticRouteConfigurationResponse {
  /// BFD Configuration properties.
  final pulumi.Input<BfdConfigurationResponse>? bfdConfiguration;
  /// List of IPv4 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>>? ipv4Routes;
  /// List of IPv6 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>>? ipv6Routes;

  /// Creates a new [NpbStaticRouteConfigurationResponse].
  /// [bfdConfiguration] BFD Configuration properties.
  /// [ipv4Routes] List of IPv4 Routes.
  /// [ipv6Routes] List of IPv6 Routes.
  const NpbStaticRouteConfigurationResponse({
    this.bfdConfiguration,
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfigurationResponse, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRoutePropertiesResponse>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRoutePropertiesResponse>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NpbStaticRouteConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NpbStaticRouteConfigurationResponse(
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRoutePropertiesResponse>(guardedValue, (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRoutePropertiesResponse>(guardedValue, (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

