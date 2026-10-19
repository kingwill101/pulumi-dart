// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnConnectionRoute {
  /// CIDR block associated with the local subnet of the customer data center.
  final pulumi.Input<String> destinationCidrBlock;
  /// How the routes were provided.
  final pulumi.Input<String> source;
  /// Current state of the static route.
  final pulumi.Input<String> state;

  /// Creates a new [GetVpnConnectionRoute].
  /// [destinationCidrBlock] CIDR block associated with the local subnet of the customer data center.
  /// [source] How the routes were provided.
  /// [state] Current state of the static route.
  const GetVpnConnectionRoute({
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
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
