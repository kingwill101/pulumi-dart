// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source_feature_group.dart';

/// A Feature Registry source for features that need to be synced to Online Store.
class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  final List<
          GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup>
      featureGroups;

  GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource({
    required this.featureGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroups'] = Input.encodeList<
        GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup,
        Map<String, dynamic>>(featureGroups, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource(
      featureGroups: Input.decodeList<
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup>(
          map['featureGroups'],
          (value) =>
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
