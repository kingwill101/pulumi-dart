// ignore_for_file: unused_element, unnecessary_cast


class GetVpnConnectionRoute {
  final String destinationCidrBlock;
  final String source;
  /// Current state of the VPN connection.
  final String state;

  /// Creates a new [GetVpnConnectionRoute].
  /// [destinationCidrBlock] Required.
  /// [source] Required.
  /// [state] Current state of the VPN connection.
  GetVpnConnectionRoute({
    required this.destinationCidrBlock,
    required this.source,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': destinationCidrBlock,
      'source': source,
      'state': state,
    };
  }

  factory GetVpnConnectionRoute.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionRoute(
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      source: map['source'] as String,
      state: map['state'] as String,
    );
  }
}

