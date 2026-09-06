// ignore_for_file: unused_element, unnecessary_cast

import 'file_share_provisioning_recommendation_output_response.dart';

/// Result data returned by getFileShareProvisioningRecommendation.
class GetFileShareProvisioningRecommendationResult {
  /// The properties of the file share provisioning recommendation output.
  final FileShareProvisioningRecommendationOutputResponse? properties;

  /// Creates a new [GetFileShareProvisioningRecommendationResult].
  /// [properties] The properties of the file share provisioning recommendation output.
  const GetFileShareProvisioningRecommendationResult({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties?.toMap(),
    };
  }

  factory GetFileShareProvisioningRecommendationResult.fromMap(Map<String, dynamic> map) {
    return GetFileShareProvisioningRecommendationResult(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return FileShareProvisioningRecommendationOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
