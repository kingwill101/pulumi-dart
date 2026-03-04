// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NatGatewayAccessMode {
  /// The mode of Access. Valid values:
  final pulumi.Input<String>? modeValue;

  /// The type of Tunnel. Valid values: `geneve`. **NOTE:** `tunnel_type` takes effect only if `mode_value` is set to `tunnel`.
  final pulumi.Input<String>? tunnelType;

  /// Creates a new [NatGatewayAccessMode].
  /// [modeValue] The mode of Access. Valid values:
  /// [tunnelType] The type of Tunnel. Valid values: `geneve`. **NOTE:** `tunnel_type` takes effect only if `mode_value` is set to `tunnel`.
  NatGatewayAccessMode({this.modeValue, this.tunnelType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modeValue': ?modeValue,
      'tunnelType': ?tunnelType,
    };
  }

  factory NatGatewayAccessMode.fromMap(Map<String, dynamic> map) {
    return NatGatewayAccessMode(
      modeValue: (() {
        final guardedValue = map['modeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelType: (() {
        final guardedValue = map['tunnelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
