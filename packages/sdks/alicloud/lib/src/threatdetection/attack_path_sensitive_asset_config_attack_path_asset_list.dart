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

  factory AttackPathSensitiveAssetConfigAttackPathAssetList.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttackPathSensitiveAssetConfigAttackPathAssetList(
      assetSubType: pulumi.Input.fromValue(map['assetSubType'] as int),
      assetType: pulumi.Input.fromValue(map['assetType'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as int),
    );
  }
}
