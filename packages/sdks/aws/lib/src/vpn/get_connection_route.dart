// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionRoute {
  final pulumi.Input<String> destinationCidrBlock;
  final pulumi.Input<String> source;
  /// Current state of the VPN connection.
  final pulumi.Input<String> state;

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
      destinationCidrBlock: (map['destinationCidrBlock'] as String).input(),
      source: (map['source'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

