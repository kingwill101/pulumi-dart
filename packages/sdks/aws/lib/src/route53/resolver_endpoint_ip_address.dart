// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverEndpointIpAddress {
  /// IPv4 address in the subnet that you want to use for DNS queries.
  final pulumi.Input<String>? ip;
  final pulumi.Input<String>? ipId;
  /// IPv6 address in the subnet that you want to use for DNS queries.
  final pulumi.Input<String>? ipv6;
  /// ID of the subnet that contains the IP address.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ResolverEndpointIpAddress].
  /// [ip] IPv4 address in the subnet that you want to use for DNS queries.
  /// [ipId] Optional.
  /// [ipv6] IPv6 address in the subnet that you want to use for DNS queries.
  /// [subnetId] ID of the subnet that contains the IP address.
  const ResolverEndpointIpAddress({
    this.ip,
    this.ipId,
    this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'ipId': ?ipId,
      'ipv6': ?ipv6,
      'subnetId': subnetId,
    };
  }

  factory ResolverEndpointIpAddress.fromMap(Map<String, dynamic> map) {
    return ResolverEndpointIpAddress(
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipId: (() { final guardedValue = map['ipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

