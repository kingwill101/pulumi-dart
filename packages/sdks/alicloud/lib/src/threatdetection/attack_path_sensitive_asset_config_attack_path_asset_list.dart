// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttackPathSensitiveAssetConfigAttackPathAssetList {
  /// Cloud product asset subtype.
  final pulumi.Input<int> assetSubType;
  /// The asset type of the cloud product asset.
  final pulumi.Input<int> assetType;
  /// The ID of the cloud product instance.
  final pulumi.Input<String> instanceId;
  /// The region ID of the cloud product.
  final pulumi.Input<String> regionId;
  /// Cloud product asset vendor. Valid values: `0`.
  final pulumi.Input<int> vendor;

  /// Creates a new [AttackPathSensitiveAssetConfigAttackPathAssetList].
  /// [assetSubType] Cloud product asset subtype.
  /// [assetType] The asset type of the cloud product asset.
  /// [instanceId] The ID of the cloud product instance.
  /// [regionId] The region ID of the cloud product.
  /// [vendor] Cloud product asset vendor. Valid values: `0`.
  AttackPathSensitiveAssetConfigAttackPathAssetList({
    required this.assetSubType,
    required this.assetType,
    required this.instanceId,
    required this.regionId,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSubType': assetSubType,
      'assetType': assetType,
      'instanceId': instanceId,
      'regionId': regionId,
      'vendor': vendor,
    };
  }

  factory AttackPathSensitiveAssetConfigAttackPathAssetList.fromMap(Map<String, dynamic> map) {
    return AttackPathSensitiveAssetConfigAttackPathAssetList(
      assetSubType: (map['assetSubType'] as int).input(),
      assetType: (map['assetType'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      vendor: (map['vendor'] as int).input(),
    );
  }
}

