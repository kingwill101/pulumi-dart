// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of an application gateway.
class ApplicationGatewaySku {
  /// Capacity (instance count) of an application gateway.
  final pulumi.Input<int?>? capacity;
  /// Family of an application gateway SKU.
  final pulumi.Input<dynamic>? family;
  /// Name of an application gateway SKU.
  final pulumi.Input<dynamic>? name;
  /// Tier of an application gateway.
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [ApplicationGatewaySku].
  /// [capacity] Capacity (instance count) of an application gateway.
  /// [family] Family of an application gateway SKU.
  /// [name] Name of an application gateway SKU.
  /// [tier] Tier of an application gateway.
  const ApplicationGatewaySku({
    this.capacity,
    this.family,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ApplicationGatewaySku.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
