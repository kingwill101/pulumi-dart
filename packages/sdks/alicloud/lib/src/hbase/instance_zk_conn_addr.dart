// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceZkConnAddr {
  /// The Phoenix address.
  final pulumi.Input<String>? connAddr;
  /// The number of the port over which Phoenix connects to the instance.
  final pulumi.Input<String>? connAddrPort;
  /// The type of the network. Valid values:
  final pulumi.Input<String>? netType;

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
      connAddr: (() { final guardedValue = map['connAddr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connAddrPort: (() { final guardedValue = map['connAddrPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netType: (() { final guardedValue = map['netType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

