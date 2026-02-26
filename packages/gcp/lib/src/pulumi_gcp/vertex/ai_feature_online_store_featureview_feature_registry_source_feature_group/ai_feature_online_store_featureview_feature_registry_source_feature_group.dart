// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup {
  /// Identifier of the feature group.
  final String featureGroupId;

  /// Identifiers of features under the feature group.
  final List<String> featureIds;

  AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup({
    required this.featureGroupId,
    required this.featureIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['featureIds'] = featureIds;
    return map;
  }

  factory AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup(
      featureGroupId: map['featureGroupId'] as String,
      featureIds: (map['featureIds'] as List).cast<String>(),
    );
  }
}
