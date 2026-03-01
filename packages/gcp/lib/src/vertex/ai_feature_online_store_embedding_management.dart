// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreEmbeddingManagement {
  /// Enable embedding management.
  final bool? enabled;

  /// Creates a new [AiFeatureOnlineStoreEmbeddingManagement].
  /// [enabled] Enable embedding management.
  AiFeatureOnlineStoreEmbeddingManagement({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory AiFeatureOnlineStoreEmbeddingManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreEmbeddingManagement(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
