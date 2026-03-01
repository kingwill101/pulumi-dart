// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup {
  /// Identifier of the feature group.
  final String featureGroupId;

  /// Identifiers of features under the feature group.
  final List<String> featureIds;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup].
  /// [featureGroupId] Identifier of the feature group.
  /// [featureIds] Identifiers of features under the feature group.
  AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup({
    required this.featureGroupId,
    required this.featureIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'featureIds': featureIds,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroup(
      featureGroupId: map['featureGroupId'] as String,
      featureIds: (map['featureIds'] as List).cast<String>(),
    );
  }
}
