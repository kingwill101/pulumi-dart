// ignore_for_file: unused_element, unnecessary_cast

class SearchEngineSearchEngineConfig {
  /// The add-on that this search engine enables.
  /// Each value may be one of: `SEARCH_ADD_ON_LLM`.
  final List<String>? searchAddOns;

  /// The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  /// Default value is `SEARCH_TIER_STANDARD`.
  /// Possible values are: `SEARCH_TIER_STANDARD`, `SEARCH_TIER_ENTERPRISE`.
  final String? searchTier;

  /// Creates a new [SearchEngineSearchEngineConfig].
  /// [searchAddOns] The add-on that this search engine enables.
  /// [searchTier] The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  SearchEngineSearchEngineConfig({
    this.searchAddOns,
    this.searchTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final searchAddOnsValue = searchAddOns;
    if (searchAddOnsValue != null) {
      map['searchAddOns'] = searchAddOnsValue;
    }
    final searchTierValue = searchTier;
    if (searchTierValue != null) {
      map['searchTier'] = searchTierValue;
    }
    return map;
  }

  factory SearchEngineSearchEngineConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineSearchEngineConfig(
      searchAddOns: map['searchAddOns'] == null
          ? null
          : (map['searchAddOns'] as List).cast<String>(),
      searchTier:
          map['searchTier'] == null ? null : map['searchTier'] as String,
    );
  }
}
