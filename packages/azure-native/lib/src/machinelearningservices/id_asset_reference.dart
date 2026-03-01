// ignore_for_file: unused_element, unnecessary_cast


/// Reference to an asset via its ARM resource ID.
class IdAssetReference {
  /// [Required] ARM resource ID of the asset.
  final String assetId;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'Id'.
  final String referenceType;

  /// Creates a new [IdAssetReference].
  /// [assetId] [Required] ARM resource ID of the asset.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  IdAssetReference({
    required this.assetId,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'referenceType': referenceType,
    };
  }

  factory IdAssetReference.fromMap(Map<String, dynamic> map) {
    return IdAssetReference(
      assetId: map['assetId'] as String,
      referenceType: map['referenceType'] as String,
    );
  }
}

