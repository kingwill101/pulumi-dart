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
  ApplicationGatewaySku({
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
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

