// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing SKU for Azure Dev Spaces Controller.
class Sku {
  /// The name of the SKU for Azure Dev Spaces Controller.
  final pulumi.Input<dynamic> name;
  /// The tier of the SKU for Azure Dev Spaces Controller.
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [Sku].
  /// [name] The name of the SKU for Azure Dev Spaces Controller.
  /// [tier] The tier of the SKU for Azure Dev Spaces Controller.
  const Sku({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: pulumi.Input.fromValue(map['name']),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
