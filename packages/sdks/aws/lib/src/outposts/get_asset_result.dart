// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAsset.
class GetAssetResult {
  final String? arn;
  final String? assetId;
  /// Type of the asset.
  final String? assetType;
  /// Host ID of the Dedicated Hosts on the asset, if a Dedicated Host is provisioned.
  final String? hostId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Instance families supported by the asset.
  final List<String>? instanceFamilies;
  /// Position of an asset in a rack measured in rack units.
  final int? rackElevation;
  /// Rack ID of the asset.
  final String? rackId;
  final String? region;

  /// Creates a new [GetAssetResult].
  /// [arn] Optional.
  /// [assetId] Optional.
  /// [assetType] Type of the asset.
  /// [hostId] Host ID of the Dedicated Hosts on the asset, if a Dedicated Host is provisioned.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceFamilies] Instance families supported by the asset.
  /// [rackElevation] Position of an asset in a rack measured in rack units.
  /// [rackId] Rack ID of the asset.
  /// [region] Optional.
  const GetAssetResult({
    this.arn,
    this.assetId,
    this.assetType,
    this.hostId,
    this.id,
    this.instanceFamilies,
    this.rackElevation,
    this.rackId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assetId': ?assetId,
      'assetType': ?assetType,
      'hostId': ?hostId,
      'id': ?id,
      'instanceFamilies': ?instanceFamilies,
      'rackElevation': ?rackElevation,
      'rackId': ?rackId,
      'region': ?region,
    };
  }

  factory GetAssetResult.fromMap(Map<String, dynamic> map) {
    return GetAssetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetType: (() { final guardedValue = map['assetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFamilies: (() { final guardedValue = map['instanceFamilies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      rackElevation: (() { final guardedValue = map['rackElevation']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      rackId: (() { final guardedValue = map['rackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
