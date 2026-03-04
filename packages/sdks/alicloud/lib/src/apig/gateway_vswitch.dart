// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVswitch {
  /// The zone name.
  final pulumi.Input<String>? name;

  /// The ID of the virtual switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayVswitch].
  /// [name] The zone name.
  /// [vswitchId] The ID of the virtual switch.
  GatewayVswitch({this.name, this.vswitchId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'vswitchId': ?vswitchId};
  }

  factory GatewayVswitch.fromMap(Map<String, dynamic> map) {
    return GatewayVswitch(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
