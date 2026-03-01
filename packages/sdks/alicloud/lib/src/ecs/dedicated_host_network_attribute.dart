// ignore_for_file: unused_element, unnecessary_cast


class DedicatedHostNetworkAttribute {
  /// The timeout period for a UDP session between Server Load Balancer (SLB) and the dedicated host. Unit: seconds. Valid values: 15 to 310.
  final int? slbUdpTimeout;
  /// The timeout period for a UDP session between a user and an Alibaba Cloud service on the dedicated host. Unit: seconds. Valid values: 15 to 310.
  final int? udpTimeout;

  /// Creates a new [DedicatedHostNetworkAttribute].
  /// [slbUdpTimeout] The timeout period for a UDP session between Server Load Balancer (SLB) and the dedicated host. Unit: seconds. Valid values: 15 to 310.
  /// [udpTimeout] The timeout period for a UDP session between a user and an Alibaba Cloud service on the dedicated host. Unit: seconds. Valid values: 15 to 310.
  DedicatedHostNetworkAttribute({
    this.slbUdpTimeout,
    this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slbUdpTimeout': ?slbUdpTimeout,
      'udpTimeout': ?udpTimeout,
    };
  }

  factory DedicatedHostNetworkAttribute.fromMap(Map<String, dynamic> map) {
    return DedicatedHostNetworkAttribute(
      slbUdpTimeout: map['slbUdpTimeout'] == null ? null : map['slbUdpTimeout'] as int,
      udpTimeout: map['udpTimeout'] == null ? null : map['udpTimeout'] as int,
    );
  }
}

