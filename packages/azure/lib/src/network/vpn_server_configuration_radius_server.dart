// ignore_for_file: unused_element, unnecessary_cast


class VpnServerConfigurationRadiusServer {
  /// The Address of the Radius Server.
  final String address;
  /// The Score of the Radius Server determines the priority of the server. Ranges from 1 to 30.
  final int score;
  /// The Secret used to communicate with the Radius Server.
  final String secret;

  /// Creates a new [VpnServerConfigurationRadiusServer].
  /// [address] The Address of the Radius Server.
  /// [score] The Score of the Radius Server determines the priority of the server. Ranges from 1 to 30.
  /// [secret] The Secret used to communicate with the Radius Server.
  VpnServerConfigurationRadiusServer({
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

  factory VpnServerConfigurationRadiusServer.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationRadiusServer(
      address: map['address'] as String,
      score: map['score'] as int,
      secret: map['secret'] as String,
    );
  }
}

