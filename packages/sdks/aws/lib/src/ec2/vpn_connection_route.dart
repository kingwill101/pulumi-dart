// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionRoute {
  /// The CIDR block associated with the local subnet of the customer data center.
  final pulumi.Input<String>? destinationCidrBlock;

  /// Indicates how the routes were provided.
  final pulumi.Input<String>? source;

  /// The current state of the static route.
  final pulumi.Input<String>? state;

  /// Creates a new [VpnConnectionRoute].
  /// [destinationCidrBlock] The CIDR block associated with the local subnet of the customer data center.
  /// [source] Indicates how the routes were provided.
  /// [state] The current state of the static route.
  VpnConnectionRoute({this.destinationCidrBlock, this.source, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'source': ?source,
      'state': ?state,
    };
  }

  factory VpnConnectionRoute.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRoute(
      destinationCidrBlock: (() {
        final guardedValue = map['destinationCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
