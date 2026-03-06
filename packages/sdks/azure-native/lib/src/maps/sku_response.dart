// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of the Maps Account.
class SkuResponse {
  /// The name of the SKU, in standard format (such as G2).
  final pulumi.Input<String> name;
  /// Gets the sku tier. This is based on the SKU name.
  final pulumi.Input<String> tier;

  /// Creates a new [SkuResponse].
  /// [name] The name of the SKU, in standard format (such as G2).
  /// [tier] Gets the sku tier. This is based on the SKU name.
  const SkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

