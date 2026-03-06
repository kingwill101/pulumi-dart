// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the network interfaces of a bare metal resource.
class NetworkInterfaceResponse {
  /// Specifies the IP address of the network interface.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipAddress] Specifies the IP address of the network interface.
  const NetworkInterfaceResponse({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

