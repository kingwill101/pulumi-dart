// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';
import 'static_route_properties.dart';

/// NPB Static Route Configuration properties.
class NpbStaticRouteConfiguration {
  /// BFD Configuration properties.
  final pulumi.Input<BfdConfiguration>? bfdConfiguration;
  /// List of IPv4 Routes.
  final pulumi.Input<List<StaticRouteProperties>>? ipv4Routes;
  /// List of IPv6 Routes.
  final pulumi.Input<List<StaticRouteProperties>>? ipv6Routes;

  /// Creates a new [NpbStaticRouteConfiguration].
  /// [bfdConfiguration] BFD Configuration properties.
  /// [ipv4Routes] List of IPv4 Routes.
  /// [ipv6Routes] List of IPv6 Routes.
  NpbStaticRouteConfiguration({
    this.bfdConfiguration,
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfiguration, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRouteProperties>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRouteProperties>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NpbStaticRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return NpbStaticRouteConfiguration(
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRouteProperties>(guardedValue, (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRouteProperties>(guardedValue, (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

