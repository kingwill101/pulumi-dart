// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerSubnetMapping {
  final pulumi.Input<String> allocationId;
  final pulumi.Input<String> ipv6Address;
  final pulumi.Input<String> outpostId;
  final pulumi.Input<String> privateIpv4Address;
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetLoadBalancerSubnetMapping].
  /// [allocationId] Required.
  /// [ipv6Address] Required.
  /// [outpostId] Required.
  /// [privateIpv4Address] Required.
  /// [subnetId] Required.
  GetLoadBalancerSubnetMapping({
    required this.allocationId,
    required this.ipv6Address,
    required this.outpostId,
    required this.privateIpv4Address,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'ipv6Address': ipv6Address,
      'outpostId': outpostId,
      'privateIpv4Address': privateIpv4Address,
      'subnetId': subnetId,
    };
  }

  factory GetLoadBalancerSubnetMapping.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerSubnetMapping(
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      outpostId: pulumi.Input.fromValue(map['outpostId'] as String),
      privateIpv4Address: pulumi.Input.fromValue(
        map['privateIpv4Address'] as String,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
