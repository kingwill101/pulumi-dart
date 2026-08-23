// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU type for the edge action
class SkuTypeResponse {
  /// The name of the SKU
  final pulumi.Input<String> name;
  /// The tier of the SKU
  final pulumi.Input<String> tier;

  /// Creates a new [SkuTypeResponse].
  /// [name] The name of the SKU
  /// [tier] The tier of the SKU
  const SkuTypeResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuTypeResponse.fromMap(Map<String, dynamic> map) {
    return SkuTypeResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
