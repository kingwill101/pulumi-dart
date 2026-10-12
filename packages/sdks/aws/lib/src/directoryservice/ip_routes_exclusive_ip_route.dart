// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpRoutesExclusiveIpRoute {
  /// IPv4 CIDR block, such as `10.0.0.0/24`. For a single address, use a `/32` block, such as `10.0.0.0/32`. Must be unique across all `ipRoute` blocks.
  final pulumi.Input<String?>? cidrIp;
  /// IPv6 CIDR block, such as `2001:db8::/64`. For a single address, use a `/128` block. Must be unique across all `ipRoute` blocks.
  final pulumi.Input<String?>? cidrIpv6;
  /// Description of the address block.
  final pulumi.Input<String?>? description;

  /// Creates a new [IpRoutesExclusiveIpRoute].
  /// [cidrIp] IPv4 CIDR block, such as `10.0.0.0/24`. For a single address, use a `/32` block, such as `10.0.0.0/32`. Must be unique across all `ipRoute` blocks.
  /// [cidrIpv6] IPv6 CIDR block, such as `2001:db8::/64`. For a single address, use a `/128` block. Must be unique across all `ipRoute` blocks.
  /// [description] Description of the address block.
  const IpRoutesExclusiveIpRoute({
    this.cidrIp,
    this.cidrIpv6,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
    };
  }

  factory IpRoutesExclusiveIpRoute.fromMap(Map<String, dynamic> map) {
    return IpRoutesExclusiveIpRoute(
      cidrIp: (() { final guardedValue = map['cidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrIpv6: (() { final guardedValue = map['cidrIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
