// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku.
class SkuResponse {
  /// The display name of the sku.
  final pulumi.Input<String>? displayName;
  /// The sku family.
  final pulumi.Input<String>? family;
  /// The model name.
  final pulumi.Input<String> model;
  /// The sku name.
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [displayName] The display name of the sku.
  /// [family] The sku family.
  /// [model] The model name.
  /// [name] The sku name.
  const SkuResponse({
    this.displayName,
    this.family,
    required this.model,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'family': ?family,
      'model': model,
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

