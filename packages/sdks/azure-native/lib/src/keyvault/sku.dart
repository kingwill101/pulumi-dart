// ignore_for_file: unused_element, unnecessary_cast

import 'sku_name.dart';

/// SKU details
class Sku {
  /// SKU family name
  final String family;
  /// SKU name to specify whether the key vault is a standard vault or a premium vault.
  final SkuName name;

  /// Creates a new [Sku].
  /// [family] SKU family name
  /// [name] SKU name to specify whether the key vault is a standard vault or a premium vault.
  Sku({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name.value,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      family: map['family'] as String,
      name: SkuName.fromValue(map['name'] as String),
    );
  }
}

