// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
class DiskSkuResponse {
  /// The sku name.
  final pulumi.Input<String>? name;
  /// The sku tier.
  final pulumi.Input<String> tier;

  /// Creates a new [DiskSkuResponse].
  /// [name] The sku name.
  /// [tier] The sku tier.
  DiskSkuResponse({
    this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': tier,
    };
  }

  factory DiskSkuResponse.fromMap(Map<String, dynamic> map) {
    return DiskSkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

