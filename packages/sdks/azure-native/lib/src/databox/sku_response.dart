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
  SkuResponse({
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
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      model: (map['model'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

