// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU name. Required for account creation; optional for update.
class SkuResponse {
  /// The sku name.
  final pulumi.Input<String> name;
  /// The sku tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [name] The sku name.
  /// [tier] The sku tier.
  SkuResponse({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

