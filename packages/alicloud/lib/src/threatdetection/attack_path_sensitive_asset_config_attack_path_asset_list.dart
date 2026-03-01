// ignore_for_file: unused_element, unnecessary_cast


class AttackPathSensitiveAssetConfigAttackPathAssetList {
  /// Cloud product asset subtype.
  final int assetSubType;
  /// The asset type of the cloud product asset.
  final int assetType;
  /// The ID of the cloud product instance.
  final String instanceId;
  /// The region ID of the cloud product.
  final String regionId;
  /// Cloud product asset vendor. Valid values: `0`.
  final int vendor;

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
      assetSubType: map['assetSubType'] as int,
      assetType: map['assetType'] as int,
      instanceId: map['instanceId'] as String,
      regionId: map['regionId'] as String,
      vendor: map['vendor'] as int,
    );
  }
}

