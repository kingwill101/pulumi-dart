// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU type.
class Sku {
  /// SKU name.
  final pulumi.Input<String>? name;
  /// The SKU tier. This is based on the SKU name.
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [name] SKU name.
  /// [tier] The SKU tier. This is based on the SKU name.
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

