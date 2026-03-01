// ignore_for_file: unused_element, unnecessary_cast


class InstanceZkConnAddr {
  /// The Phoenix address.
  final String? connAddr;
  /// The number of the port over which Phoenix connects to the instance.
  final String? connAddrPort;
  /// The type of the network. Valid values:
  final String? netType;

  /// Creates a new [InstanceZkConnAddr].
  /// [connAddr] The Phoenix address.
  /// [connAddrPort] The number of the port over which Phoenix connects to the instance.
  /// [netType] The type of the network. Valid values:
  InstanceZkConnAddr({
    this.connAddr,
    this.connAddrPort,
    this.netType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connAddr': ?connAddr,
      'connAddrPort': ?connAddrPort,
      'netType': ?netType,
    };
  }

  factory InstanceZkConnAddr.fromMap(Map<String, dynamic> map) {
    return InstanceZkConnAddr(
      connAddr: map['connAddr'] == null ? null : map['connAddr'] as String,
      connAddrPort: map['connAddrPort'] == null ? null : map['connAddrPort'] as String,
      netType: map['netType'] == null ? null : map['netType'] as String,
    );
  }
}

