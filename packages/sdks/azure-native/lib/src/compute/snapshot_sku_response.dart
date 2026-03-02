// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
class SnapshotSkuResponse {
  /// The sku name.
  final pulumi.Input<String>? name;
  /// The sku tier.
  final pulumi.Input<String> tier;

  /// Creates a new [SnapshotSkuResponse].
  /// [name] The sku name.
  /// [tier] The sku tier.
  SnapshotSkuResponse({
    this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': tier,
    };
  }

  factory SnapshotSkuResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotSkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

