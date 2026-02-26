// ignore_for_file: unused_element, unnecessary_cast

class IndexingConfigurationThingIndexingConfigurationFilter {
  /// List of shadow names that you select to index.
  final List<String>? namedShadowNames;

  IndexingConfigurationThingIndexingConfigurationFilter({
    this.namedShadowNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namedShadowNamesValue = namedShadowNames;
    if (namedShadowNamesValue != null) {
      map['namedShadowNames'] = namedShadowNamesValue;
    }
    return map;
  }

  factory IndexingConfigurationThingIndexingConfigurationFilter.fromMap(
      Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfigurationFilter(
      namedShadowNames: map['namedShadowNames'] == null
          ? null
          : (map['namedShadowNames'] as List).cast<String>(),
    );
  }
}
