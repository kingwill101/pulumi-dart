// ignore_for_file: unused_element, unnecessary_cast

/// Features belonging to a single feature group that will be synced to Online Store.
class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup {
  /// Identifier of the feature group.
  final String featureGroupId;

  /// Identifiers of features under the feature group.
  final List<String> featureIds;

  GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup({
    required this.featureGroupId,
    required this.featureIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['featureIds'] = featureIds;
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup(
      featureGroupId: map['featureGroupId'] as String,
      featureIds: (map['featureIds'] as List).cast<String>(),
    );
  }
}
