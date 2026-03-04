// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the network interfaces of a bare metal resource.
class NetworkInterface {
  /// Specifies the IP address of the network interface.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [NetworkInterface].
  /// [ipAddress] Specifies the IP address of the network interface.
  NetworkInterface({this.ipAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ?ipAddress};
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
