// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku of Azure Spring Apps
class SkuResponse {
  /// Current capacity of the target resource
  final pulumi.Input<int>? capacity;
  /// Name of the Sku
  final pulumi.Input<String>? name;
  /// Tier of the Sku
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] Current capacity of the target resource
  /// [name] Name of the Sku
  /// [tier] Tier of the Sku
  const SkuResponse({
    this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
