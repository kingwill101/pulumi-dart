// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayZone {
  /// The zone name.
  final pulumi.Input<String>? name;
  /// The vswitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GatewayZone].
  /// [name] The zone name.
  /// [vswitchId] The vswitch ID.
  /// [zoneId] The zone ID.
  const GatewayZone({
    this.name,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory GatewayZone.fromMap(Map<String, dynamic> map) {
    return GatewayZone(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

