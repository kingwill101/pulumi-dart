// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an asset via its ARM resource ID.
class IdAssetReferenceResponse {
  /// [Required] ARM resource ID of the asset.
  final pulumi.Input<String> assetId;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'Id'.
  final pulumi.Input<String> referenceType;

  /// Creates a new [IdAssetReferenceResponse].
  /// [assetId] [Required] ARM resource ID of the asset.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  const IdAssetReferenceResponse({
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
      assetId: pulumi.Input.fromValue(map['assetId'] as String),
      referenceType: pulumi.Input.fromValue(map['referenceType'] as String),
    );
  }
}
