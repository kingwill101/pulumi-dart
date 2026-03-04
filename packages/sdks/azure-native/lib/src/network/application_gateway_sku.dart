// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of an application gateway.
class ApplicationGatewaySku {
  /// Capacity (instance count) of an application gateway.
  final pulumi.Input<int>? capacity;

  /// Family of an application gateway SKU.
  final pulumi.Input<String>? family;

  /// Name of an application gateway SKU.
  final pulumi.Input<String>? name;

  /// Tier of an application gateway.
  final pulumi.Input<String>? tier;

  /// Creates a new [ApplicationGatewaySku].
  /// [capacity] Capacity (instance count) of an application gateway.
  /// [family] Family of an application gateway SKU.
  /// [name] Name of an application gateway SKU.
  /// [tier] Tier of an application gateway.
  ApplicationGatewaySku({this.capacity, this.family, this.name, this.tier});

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
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
