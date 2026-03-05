// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';
import 'static_route_properties.dart';

/// Static Route Configuration properties.
class InternalNetworkPropertiesStaticRouteConfiguration {
  /// BFD configuration properties
  final pulumi.Input<BfdConfiguration>? bfdConfiguration;
  /// Extension. Example: NoExtension | NPB.
  final pulumi.Input<String>? extension;
  /// List of IPv4 Routes.
  final pulumi.Input<List<StaticRouteProperties>>? ipv4Routes;
  /// List of IPv6 Routes.
  final pulumi.Input<List<StaticRouteProperties>>? ipv6Routes;

  /// Creates a new [InternalNetworkPropertiesStaticRouteConfiguration].
  /// [bfdConfiguration] BFD configuration properties
  /// [extension] Extension. Example: NoExtension | NPB.
  /// [ipv4Routes] List of IPv4 Routes.
  /// [ipv6Routes] List of IPv6 Routes.
  InternalNetworkPropertiesStaticRouteConfiguration({
    this.bfdConfiguration,
    this.extension,
    this.ipv4Routes,
    this.ipv6Routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfiguration, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'extension': ?extension,
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRouteProperties>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRouteProperties>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InternalNetworkPropertiesStaticRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesStaticRouteConfiguration(
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRouteProperties>(guardedValue, (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRouteProperties>(guardedValue, (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

