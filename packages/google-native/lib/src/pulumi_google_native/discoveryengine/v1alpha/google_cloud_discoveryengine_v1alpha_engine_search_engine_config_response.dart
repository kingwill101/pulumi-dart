// ignore_for_file: unused_element, unnecessary_cast

/// Configurations for a Search Engine.
class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse {
  /// The add-on that this search engine enables.
  final List<String> searchAddOns;

  /// The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  final String searchTier;

  GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse({
    required this.searchAddOns,
    required this.searchTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['searchAddOns'] = searchAddOns;
    map['searchTier'] = searchTier;
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse(
      searchAddOns: (map['searchAddOns'] as List).cast<String>(),
      searchTier: map['searchTier'] as String,
    );
  }
}
