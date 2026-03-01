// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayVpnClientConfigurationRadiusServer {
  /// The address of the Radius Server.
  final String address;
  /// The score of the Radius Server determines the priority of the server. Possible values are between `1` and `30`.
  final int score;
  /// The secret that is used to communicate with the Radius Server.
  final String secret;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRadiusServer].
  /// [address] The address of the Radius Server.
  /// [score] The score of the Radius Server determines the priority of the server. Possible values are between `1` and `30`.
  /// [secret] The secret that is used to communicate with the Radius Server.
  VirtualNetworkGatewayVpnClientConfigurationRadiusServer({
    required this.address,
    required this.score,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'score': score,
      'secret': secret,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationRadiusServer.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationRadiusServer(
      address: map['address'] as String,
      score: map['score'] as int,
      secret: map['secret'] as String,
    );
  }
}

