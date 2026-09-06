// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';
import 'static_route_properties_response.dart';

/// Static Route Configuration properties.
class InternalNetworkPropertiesResponseStaticRouteConfiguration {
  /// BFD configuration properties
  final pulumi.Input<BfdConfigurationResponse?>? bfdConfiguration;
  /// Extension. Example: NoExtension | NPB.
  final pulumi.Input<String?>? extension;
  /// List of IPv4 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>?>? ipv4Routes;
  /// List of IPv6 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>?>? ipv6Routes;

  /// Creates a new [InternalNetworkPropertiesResponseStaticRouteConfiguration].
  /// [bfdConfiguration] BFD configuration properties
  /// [extension] Extension. Example: NoExtension | NPB.
  /// [ipv4Routes] List of IPv4 Routes.
  /// [ipv6Routes] List of IPv6 Routes.
  InternalNetworkPropertiesResponseStaticRouteConfiguration({
    this.bfdConfiguration,
    pulumi.Input<String?>? extension,
    this.ipv4Routes,
    this.ipv6Routes,
  }) : extension = extension ?? pulumi.Input.fromValue('NoExtension');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfigurationResponse, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'extension': ?extension,
      'ipv4Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRoutePropertiesResponse>, List<Map<String, dynamic>>>(ipv4Routes, (value) => pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Routes': ?pulumi.Input.mapOptionalInputValue<List<StaticRoutePropertiesResponse>, List<Map<String, dynamic>>>(ipv6Routes, (value) => pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InternalNetworkPropertiesResponseStaticRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesResponseStaticRouteConfiguration(
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Routes: (() { final guardedValue = map['ipv4Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRoutePropertiesResponse>(guardedValue, (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6Routes: (() { final guardedValue = map['ipv6Routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StaticRoutePropertiesResponse>(guardedValue, (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
