// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreEmbeddingManagement {
  /// Enable embedding management.
  final bool? enabled;

  AiFeatureOnlineStoreEmbeddingManagement({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory AiFeatureOnlineStoreEmbeddingManagement.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreEmbeddingManagement(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
