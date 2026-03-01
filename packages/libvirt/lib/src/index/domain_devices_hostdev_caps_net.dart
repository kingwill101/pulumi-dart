// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_caps_net_ip.dart';
import 'domain_devices_hostdev_caps_net_route.dart';
import 'domain_devices_hostdev_caps_net_source.dart';

class DomainDevicesHostdevCapsNet {
  /// Configures the IP attributes for the host device's network capabilities, including address settings.
  final List<DomainDevicesHostdevCapsNetIp>? ips;
  /// Outlines the routing capabilities associated with the host device's network configuration.
  final List<DomainDevicesHostdevCapsNetRoute>? routes;
  /// Indicates the source parameters related to the host device's network capabilities.
  final DomainDevicesHostdevCapsNetSource? source;

  /// Creates a new [DomainDevicesHostdevCapsNet].
  /// [ips] Configures the IP attributes for the host device's network capabilities, including address settings.
  /// [routes] Outlines the routing capabilities associated with the host device's network configuration.
  /// [source] Indicates the source parameters related to the host device's network capabilities.
  DomainDevicesHostdevCapsNet({
    this.ips,
    this.routes,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ips': ?ips == null ? null : pulumi.Input.encodeList<DomainDevicesHostdevCapsNetIp, Map<String, dynamic>>(ips!, (value) => value.toMap()),
      'routes': ?routes == null ? null : pulumi.Input.encodeList<DomainDevicesHostdevCapsNetRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevCapsNet.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNet(
      ips: map['ips'] == null ? null : pulumi.Input.decodeList<DomainDevicesHostdevCapsNetIp>(map['ips'], (value) => DomainDevicesHostdevCapsNetIp.fromMap((value as Map).cast<String, dynamic>())),
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<DomainDevicesHostdevCapsNetRoute>(map['routes'], (value) => DomainDevicesHostdevCapsNetRoute.fromMap((value as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : DomainDevicesHostdevCapsNetSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

