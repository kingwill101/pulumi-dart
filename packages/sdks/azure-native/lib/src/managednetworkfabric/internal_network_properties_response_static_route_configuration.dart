// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';
import 'static_route_properties_response.dart';

/// Static Route Configuration properties.
class InternalNetworkPropertiesResponseStaticRouteConfiguration {
  /// BFD configuration properties
  final pulumi.Input<BfdConfigurationResponse>? bfdConfiguration;
  /// Extension. Example: NoExtension | NPB.
  final pulumi.Input<String>? extension;
  /// List of IPv4 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>>? ipv4Routes;
  /// List of IPv6 Routes.
  final pulumi.Input<List<StaticRoutePropertiesResponse>>? ipv6Routes;

  /// Creates a new [InternalNetworkPropertiesResponseStaticRouteConfiguration].
  /// [bfdConfiguration] BFD configuration properties
  /// [extension] Extension. Example: NoExtension | NPB.
  /// [ipv4Routes] List of IPv4 Routes.
  /// [ipv6Routes] List of IPv6 Routes.
  InternalNetworkPropertiesResponseStaticRouteConfiguration({
    this.bfdConfiguration,
    this.extension,
    this.ipv4Routes,
    this.ipv6Routes,
  });

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
      bfdConfiguration: map['bfdConfiguration'] == null ? null : (BfdConfigurationResponse.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>())).input(),
      extension: map['extension'] == null ? null : (map['extension'] as String).input(),
      ipv4Routes: map['ipv4Routes'] == null ? null : (pulumi.Input.decodeList<StaticRoutePropertiesResponse>(map['ipv4Routes'], (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6Routes: map['ipv6Routes'] == null ? null : (pulumi.Input.decodeList<StaticRoutePropertiesResponse>(map['ipv6Routes'], (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

