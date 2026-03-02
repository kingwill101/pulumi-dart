// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the dedicated HSM
class Sku {
  /// SKU of the dedicated HSM
  final pulumi.Input<String>? name;

  /// Creates a new [Sku].
  /// [name] SKU of the dedicated HSM
  Sku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

