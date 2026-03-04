// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AdapterPropertyOverrides of a cluster.
class AdapterPropertyOverrides {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String>? jumboPacket;

  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String>? networkDirect;

  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  final pulumi.Input<String>? networkDirectTechnology;

  /// Creates a new [AdapterPropertyOverrides].
  /// [jumboPacket] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirect] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirectTechnology] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  AdapterPropertyOverrides({
    this.jumboPacket,
    this.networkDirect,
    this.networkDirectTechnology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jumboPacket': ?jumboPacket,
      'networkDirect': ?networkDirect,
      'networkDirectTechnology': ?networkDirectTechnology,
    };
  }

  factory AdapterPropertyOverrides.fromMap(Map<String, dynamic> map) {
    return AdapterPropertyOverrides(
      jumboPacket: (() {
        final guardedValue = map['jumboPacket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkDirect: (() {
        final guardedValue = map['networkDirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkDirectTechnology: (() {
        final guardedValue = map['networkDirectTechnology'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
