// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku of the resource
class Sku {
  /// Name of the sku
  final pulumi.Input<String>? name;
  /// Tier of the sku like Basic or Enterprise
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [name] Name of the sku
  /// [tier] Tier of the sku like Basic or Enterprise
  Sku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

