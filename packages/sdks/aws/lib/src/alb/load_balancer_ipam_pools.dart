// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerIpamPools {
  /// The ID of the IPv4 IPAM pool.
  final pulumi.Input<String> ipv4IpamPoolId;

  /// Creates a new [LoadBalancerIpamPools].
  /// [ipv4IpamPoolId] The ID of the IPv4 IPAM pool.
  LoadBalancerIpamPools({required this.ipv4IpamPoolId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4IpamPoolId': ipv4IpamPoolId};
  }

  factory LoadBalancerIpamPools.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIpamPools(
      ipv4IpamPoolId: pulumi.Input.fromValue(map['ipv4IpamPoolId'] as String),
    );
  }
}
