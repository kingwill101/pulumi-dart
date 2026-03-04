// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerZoneMappingLoadBalancerAddress {
  /// The ID of the elastic network interface (ENI) used by the GWLB instance.
  final pulumi.Input<String>? eniId;

  /// The private IPv4 address.
  final pulumi.Input<String>? privateIpv4Address;

  /// Creates a new [LoadBalancerZoneMappingLoadBalancerAddress].
  /// [eniId] The ID of the elastic network interface (ENI) used by the GWLB instance.
  /// [privateIpv4Address] The private IPv4 address.
  LoadBalancerZoneMappingLoadBalancerAddress({
    this.eniId,
    this.privateIpv4Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': ?eniId,
      'privateIpv4Address': ?privateIpv4Address,
    };
  }

  factory LoadBalancerZoneMappingLoadBalancerAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerZoneMappingLoadBalancerAddress(
      eniId: (() {
        final guardedValue = map['eniId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpv4Address: (() {
        final guardedValue = map['privateIpv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
