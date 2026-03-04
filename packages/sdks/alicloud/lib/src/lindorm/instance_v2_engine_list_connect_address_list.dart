// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceV2EngineListConnectAddressList {
  /// Connect Address
  final pulumi.Input<String>? address;

  /// Connect Port
  final pulumi.Input<String>? port;

  /// Connect Type:
  final pulumi.Input<String>? type;

  /// Creates a new [InstanceV2EngineListConnectAddressList].
  /// [address] Connect Address
  /// [port] Connect Port
  /// [type] Connect Type:
  InstanceV2EngineListConnectAddressList({this.address, this.port, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'port': ?port, 'type': ?type};
  }

  factory InstanceV2EngineListConnectAddressList.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceV2EngineListConnectAddressList(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
