// ignore_for_file: unused_element, unnecessary_cast

class GetConnectionRoute {
  final String destinationCidrBlock;
  final String source;

  /// Current state of the VPN connection.
  final String state;

  /// Creates a new [GetConnectionRoute].
  /// [destinationCidrBlock] Required.
  /// [source] Required.
  /// [state] Current state of the VPN connection.
  GetConnectionRoute({
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

  factory GetConnectionRoute.fromMap(Map<String, dynamic> map) {
    return GetConnectionRoute(
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      source: map['source'] as String,
      state: map['state'] as String,
    );
  }
}
