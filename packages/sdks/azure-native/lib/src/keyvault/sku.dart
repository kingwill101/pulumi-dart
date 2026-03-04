// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_name.dart';

/// SKU details
class Sku {
  /// SKU family name
  final pulumi.Input<String> family;

  /// SKU name to specify whether the key vault is a standard vault or a premium vault.
  final pulumi.Input<SkuName> name;

  /// Creates a new [Sku].
  /// [family] SKU family name
  /// [name] SKU name to specify whether the key vault is a standard vault or a premium vault.
  Sku({required this.family, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': pulumi.Input.mapInputValue<SkuName, String>(
        name,
        (value) => value.wireValue,
      ),
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(SkuName.fromValue(map['name']! as String)),
    );
  }
}
