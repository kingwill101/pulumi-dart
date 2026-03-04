// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayGatewayNetworkInterface {
  /// The Internet Protocol version 4 (IPv4) address of the interface.
  final pulumi.Input<String>? ipv4Address;

  /// Creates a new [GatewayGatewayNetworkInterface].
  /// [ipv4Address] The Internet Protocol version 4 (IPv4) address of the interface.
  GatewayGatewayNetworkInterface({this.ipv4Address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4Address': ?ipv4Address};
  }

  factory GatewayGatewayNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GatewayGatewayNetworkInterface(
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
