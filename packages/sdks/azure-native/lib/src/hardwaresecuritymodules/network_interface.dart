// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network interface definition.
class NetworkInterface {
  /// Private Ip address of the interface
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [NetworkInterface].
  /// [privateIpAddress] Private Ip address of the interface
  const NetworkInterface({
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
