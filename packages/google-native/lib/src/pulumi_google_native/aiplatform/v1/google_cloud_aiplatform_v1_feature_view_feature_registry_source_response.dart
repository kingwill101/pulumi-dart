// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source_feature_group_response.dart';

/// A Feature Registry source for features that need to be synced to Online Store.
class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse {
  /// List of features that need to be synced to Online Store.
  final List<
          GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroupResponse>
      featureGroups;

  GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse({
    required this.featureGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroups'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroupResponse,
        Map<String, dynamic>>(featureGroups, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse(
      featureGroups: pulumi.Input.decodeList<
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroupResponse>(
          map['featureGroups'],
          (value) =>
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroupResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
