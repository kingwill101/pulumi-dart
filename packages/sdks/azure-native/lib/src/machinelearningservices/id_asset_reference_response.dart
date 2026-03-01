// ignore_for_file: unused_element, unnecessary_cast


/// Reference to an asset via its ARM resource ID.
class IdAssetReferenceResponse {
  /// [Required] ARM resource ID of the asset.
  final String assetId;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'Id'.
  final String referenceType;

  /// Creates a new [IdAssetReferenceResponse].
  /// [assetId] [Required] ARM resource ID of the asset.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  IdAssetReferenceResponse({
    required this.assetId,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'referenceType': referenceType,
    };
  }

  factory IdAssetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IdAssetReferenceResponse(
      assetId: map['assetId'] as String,
      referenceType: map['referenceType'] as String,
    );
  }
}

