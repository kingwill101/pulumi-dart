// ignore_for_file: unused_element, unnecessary_cast

class GatewayGatewayNetworkInterface {
  /// The Internet Protocol version 4 (IPv4) address of the interface.
  final String? ipv4Address;

  /// Creates a new [GatewayGatewayNetworkInterface].
  /// [ipv4Address] The Internet Protocol version 4 (IPv4) address of the interface.
  GatewayGatewayNetworkInterface({this.ipv4Address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4Address': ?ipv4Address};
  }

  factory GatewayGatewayNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GatewayGatewayNetworkInterface(
      ipv4Address: map['ipv4Address'] == null
          ? null
          : map['ipv4Address'] as String,
    );
  }
}
