// ignore_for_file: unused_element, unnecessary_cast

class DataStoreAdvancedSiteSearchConfig {
  /// If set true, automatic refresh is disabled for the DataStore.
  final bool? disableAutomaticRefresh;

  /// If set true, initial indexing is disabled for the DataStore.
  final bool? disableInitialIndex;

  DataStoreAdvancedSiteSearchConfig({
    this.disableAutomaticRefresh,
    this.disableInitialIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableAutomaticRefreshValue = disableAutomaticRefresh;
    if (disableAutomaticRefreshValue != null) {
      map['disableAutomaticRefresh'] = disableAutomaticRefreshValue;
    }
    final disableInitialIndexValue = disableInitialIndex;
    if (disableInitialIndexValue != null) {
      map['disableInitialIndex'] = disableInitialIndexValue;
    }
    return map;
  }

  factory DataStoreAdvancedSiteSearchConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreAdvancedSiteSearchConfig(
      disableAutomaticRefresh: map['disableAutomaticRefresh'] == null
          ? null
          : map['disableAutomaticRefresh'] as bool,
      disableInitialIndex: map['disableInitialIndex'] == null
          ? null
          : map['disableInitialIndex'] as bool,
    );
  }
}
