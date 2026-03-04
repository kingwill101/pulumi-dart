// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route is associated with a subnet.
class VirtualNetworkPropertiesRoutes {
  /// AddressPrefix - The destination CIDR to which the route applies.
  final pulumi.Input<String>? addressPrefix;

  /// Name - name of the subnet
  final pulumi.Input<String>? name;

  /// NextHopIPAddress - The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String>? nextHopIpAddress;

  /// Creates a new [VirtualNetworkPropertiesRoutes].
  /// [addressPrefix] AddressPrefix - The destination CIDR to which the route applies.
  /// [name] Name - name of the subnet
  /// [nextHopIpAddress] NextHopIPAddress - The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  VirtualNetworkPropertiesRoutes({
    this.addressPrefix,
    this.name,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory VirtualNetworkPropertiesRoutes.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesRoutes(
      addressPrefix: (() {
        final guardedValue = map['addressPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextHopIpAddress: (() {
        final guardedValue = map['nextHopIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
