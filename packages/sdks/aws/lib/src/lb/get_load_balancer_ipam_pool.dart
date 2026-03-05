// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerIpamPool {
  final pulumi.Input<String> ipv4IpamPoolId;

  /// Creates a new [GetLoadBalancerIpamPool].
  /// [ipv4IpamPoolId] Required.
  GetLoadBalancerIpamPool({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4IpamPoolId': ipv4IpamPoolId,
    };
  }

  factory GetLoadBalancerIpamPool.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerIpamPool(
      ipv4IpamPoolId: pulumi.Input.fromValue(map['ipv4IpamPoolId'] as String),
    );
  }
}

