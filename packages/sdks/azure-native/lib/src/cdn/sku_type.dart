// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU type for the edge action
class SkuType {
  /// The name of the SKU
  final pulumi.Input<String> name;
  /// The tier of the SKU
  final pulumi.Input<String> tier;

  /// Creates a new [SkuType].
  /// [name] The name of the SKU
  /// [tier] The tier of the SKU
  SkuType({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuType.fromMap(Map<String, dynamic> map) {
    return SkuType(
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

