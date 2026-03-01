// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';
import 'static_route_properties_response.dart';

/// Static Route Configuration properties.
class InternalNetworkPropertiesResponseStaticRouteConfiguration {
  /// BFD configuration properties
  final BfdConfigurationResponse? bfdConfiguration;
  /// Extension. Example: NoExtension | NPB.
  final String? extension;
  /// List of IPv4 Routes.
  final List<StaticRoutePropertiesResponse>? ipv4Routes;
  /// List of IPv6 Routes.
  final List<StaticRoutePropertiesResponse>? ipv6Routes;

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
      'bfdConfiguration': ?bfdConfiguration == null ? null : bfdConfiguration!.toMap(),
      'extension': ?extension,
      'ipv4Routes': ?ipv4Routes == null ? null : pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(ipv4Routes!, (value) => value.toMap()),
      'ipv6Routes': ?ipv6Routes == null ? null : pulumi.Input.encodeList<StaticRoutePropertiesResponse, Map<String, dynamic>>(ipv6Routes!, (value) => value.toMap()),
    };
  }

  factory InternalNetworkPropertiesResponseStaticRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesResponseStaticRouteConfiguration(
      bfdConfiguration: map['bfdConfiguration'] == null ? null : BfdConfigurationResponse.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>()),
      extension: map['extension'] == null ? null : map['extension'] as String,
      ipv4Routes: map['ipv4Routes'] == null ? null : pulumi.Input.decodeList<StaticRoutePropertiesResponse>(map['ipv4Routes'], (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Routes: map['ipv6Routes'] == null ? null : pulumi.Input.decodeList<StaticRoutePropertiesResponse>(map['ipv6Routes'], (value) => StaticRoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

