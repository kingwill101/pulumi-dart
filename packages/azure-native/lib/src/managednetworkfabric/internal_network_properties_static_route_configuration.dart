// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';
import 'static_route_properties.dart';

/// Static Route Configuration properties.
class InternalNetworkPropertiesStaticRouteConfiguration {
  /// BFD configuration properties
  final BfdConfiguration? bfdConfiguration;
  /// Extension. Example: NoExtension | NPB.
  final String? extension;
  /// List of IPv4 Routes.
  final List<StaticRouteProperties>? ipv4Routes;
  /// List of IPv6 Routes.
  final List<StaticRouteProperties>? ipv6Routes;

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
      'bfdConfiguration': ?bfdConfiguration == null ? null : bfdConfiguration!.toMap(),
      'extension': ?extension,
      'ipv4Routes': ?ipv4Routes == null ? null : pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(ipv4Routes!, (value) => value.toMap()),
      'ipv6Routes': ?ipv6Routes == null ? null : pulumi.Input.encodeList<StaticRouteProperties, Map<String, dynamic>>(ipv6Routes!, (value) => value.toMap()),
    };
  }

  factory InternalNetworkPropertiesStaticRouteConfiguration.fromMap(Map<String, dynamic> map) {
    return InternalNetworkPropertiesStaticRouteConfiguration(
      bfdConfiguration: map['bfdConfiguration'] == null ? null : BfdConfiguration.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>()),
      extension: map['extension'] == null ? null : map['extension'] as String,
      ipv4Routes: map['ipv4Routes'] == null ? null : pulumi.Input.decodeList<StaticRouteProperties>(map['ipv4Routes'], (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Routes: map['ipv6Routes'] == null ? null : pulumi.Input.decodeList<StaticRouteProperties>(map['ipv6Routes'], (value) => StaticRouteProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

