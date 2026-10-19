// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionRoute {
  /// CIDR block associated with the local subnet of the customer data center.
  final pulumi.Input<String?>? destinationCidrBlock;
  /// How the routes were provided.
  final pulumi.Input<String?>? source;
  /// Current state of the static route.
  final pulumi.Input<String?>? state;

  /// Creates a new [VpnConnectionRoute].
  /// [destinationCidrBlock] CIDR block associated with the local subnet of the customer data center.
  /// [source] How the routes were provided.
  /// [state] Current state of the static route.
  const VpnConnectionRoute({
    this.destinationCidrBlock,
    this.source,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'source': ?source,
      'state': ?state,
    };
  }

  factory VpnConnectionRoute.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRoute(
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
