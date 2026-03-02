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
  SkuResponse({
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
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

