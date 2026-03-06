// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostsHostNetworkAttribute {
  /// The timeout period for a UDP session between Server Load Balancer (SLB) and the dedicated host. Unit: seconds.
  final pulumi.Input<int> slbUdpTimeout;
  /// (Available since v1.123.1) The timeout period for a UDP session between a user and an Alibaba Cloud service on the dedicated host. Unit: seconds.
  final pulumi.Input<int> udpTimeout;

  /// Creates a new [GetDedicatedHostsHostNetworkAttribute].
  /// [slbUdpTimeout] The timeout period for a UDP session between Server Load Balancer (SLB) and the dedicated host. Unit: seconds.
  /// [udpTimeout] (Available since v1.123.1) The timeout period for a UDP session between a user and an Alibaba Cloud service on the dedicated host. Unit: seconds.
  const GetDedicatedHostsHostNetworkAttribute({
    required this.slbUdpTimeout,
    required this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slbUdpTimeout': slbUdpTimeout,
      'udpTimeout': udpTimeout,
    };
  }

  factory GetDedicatedHostsHostNetworkAttribute.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHostNetworkAttribute(
      slbUdpTimeout: pulumi.Input.fromValue(map['slbUdpTimeout'] as int),
      udpTimeout: pulumi.Input.fromValue(map['udpTimeout'] as int),
    );
  }
}

