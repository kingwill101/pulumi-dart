// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU details
class SkuResponse {
  /// SKU family name
  final pulumi.Input<String> family;
  /// SKU name to specify whether the key vault is a standard vault or a premium vault.
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [family] SKU family name
  /// [name] SKU name to specify whether the key vault is a standard vault or a premium vault.
  const SkuResponse({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

