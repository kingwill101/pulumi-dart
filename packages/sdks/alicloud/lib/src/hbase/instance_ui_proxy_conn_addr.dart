// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceUiProxyConnAddr {
  /// The Phoenix address.
  final pulumi.Input<String>? connAddr;
  /// The number of the port over which Phoenix connects to the instance.
  final pulumi.Input<String>? connAddrPort;
  /// The type of the network. Valid values:
  final pulumi.Input<String>? netType;

  /// Creates a new [InstanceUiProxyConnAddr].
  /// [connAddr] The Phoenix address.
  /// [connAddrPort] The number of the port over which Phoenix connects to the instance.
  /// [netType] The type of the network. Valid values:
  InstanceUiProxyConnAddr({
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

  factory InstanceUiProxyConnAddr.fromMap(Map<String, dynamic> map) {
    return InstanceUiProxyConnAddr(
      connAddr: map['connAddr'] == null ? null : (map['connAddr'] as String).input(),
      connAddrPort: map['connAddrPort'] == null ? null : (map['connAddrPort'] as String).input(),
      netType: map['netType'] == null ? null : (map['netType'] as String).input(),
    );
  }
}

