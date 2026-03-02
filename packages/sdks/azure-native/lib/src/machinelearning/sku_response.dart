// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku of the resource
class SkuResponse {
  /// Name of the sku
  final pulumi.Input<String>? name;
  /// Tier of the sku like Basic or Enterprise
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [name] Name of the sku
  /// [tier] Tier of the sku like Basic or Enterprise
  SkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

