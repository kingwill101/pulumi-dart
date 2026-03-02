// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of a container registry.
class SkuResponse {
  /// The SKU name of the container registry. Required for registry creation.
  final pulumi.Input<String> name;
  /// The SKU tier based on the SKU name.
  final pulumi.Input<String> tier;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name of the container registry. Required for registry creation.
  /// [tier] The SKU tier based on the SKU name.
  SkuResponse({
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
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

