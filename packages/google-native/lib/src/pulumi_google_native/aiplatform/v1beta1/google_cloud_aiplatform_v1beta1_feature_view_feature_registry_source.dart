// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source_feature_group.dart';

/// A Feature Registry source for features that need to be synced to Online Store.
class GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource {
  /// List of features that need to be synced to Online Store.
  final List<
          GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup>
      featureGroups;

  GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource({
    required this.featureGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroups'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup,
        Map<String, dynamic>>(featureGroups, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource(
      featureGroups: Input.decodeList<
              GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup>(
          map['featureGroups'],
          (value) =>
              GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceFeatureGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
