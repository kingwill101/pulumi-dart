// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAsset.
class GetAssetResult {
  final String arn;
  final String assetId;

  /// Type of the asset.
  final String assetType;

  /// Host ID of the Dedicated Hosts on the asset, if a Dedicated Host is provisioned.
  final String hostId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Position of an asset in a rack measured in rack units.
  final int rackElevation;

  /// Rack ID of the asset.
  final String rackId;
  final String region;

  GetAssetResult({
    required this.arn,
    required this.assetId,
    required this.assetType,
    required this.hostId,
    required this.id,
    required this.rackElevation,
    required this.rackId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['assetId'] = assetId;
    map['assetType'] = assetType;
    map['hostId'] = hostId;
    map['id'] = id;
    map['rackElevation'] = rackElevation;
    map['rackId'] = rackId;
    map['region'] = region;
    return map;
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      arn: map['arn'] as String,
      assetId: map['assetId'] as String,
      assetType: map['assetType'] as String,
      hostId: map['hostId'] as String,
      id: map['id'] as String,
      rackElevation: map['rackElevation'] as int,
      rackId: map['rackId'] as String,
      region: map['region'] as String,
    );
  }
}
