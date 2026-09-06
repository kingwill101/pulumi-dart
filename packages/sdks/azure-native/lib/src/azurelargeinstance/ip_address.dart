// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the IP address of the network interface.
class IpAddress {
  /// Specifies the IP address of the network interface.
  final pulumi.Input<String?>? ipAddress;

  /// Creates a new [IpAddress].
  /// [ipAddress] Specifies the IP address of the network interface.
  const IpAddress({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory IpAddress.fromMap(Map<String, dynamic> map) {
    return IpAddress(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
