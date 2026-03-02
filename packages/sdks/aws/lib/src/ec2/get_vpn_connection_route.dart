// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnConnectionRoute {
  final pulumi.Input<String> destinationCidrBlock;
  final pulumi.Input<String> source;
  /// Current state of the VPN connection.
  final pulumi.Input<String> state;

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
      destinationCidrBlock: (map['destinationCidrBlock'] as String).input(),
      source: (map['source'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

