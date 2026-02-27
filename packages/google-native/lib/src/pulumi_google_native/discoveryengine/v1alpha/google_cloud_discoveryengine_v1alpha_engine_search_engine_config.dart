// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_search_add_ons_item.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_search_tier.dart';

/// Configurations for a Search Engine.
class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig {
  /// The add-on that this search engine enables.
  final List<
          GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem>?
      searchAddOns;

  /// The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  final GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier?
      searchTier;

  GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig({
    this.searchAddOns,
    this.searchTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final searchAddOnsValue = searchAddOns;
    if (searchAddOnsValue != null) {
      map['searchAddOns'] = Input.encodeList<
          GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem,
          String>(searchAddOnsValue, (value) => value.value);
    }
    final searchTierValue = searchTier;
    if (searchTierValue != null) {
      map['searchTier'] = searchTierValue.value;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig(
      searchAddOns: map['searchAddOns'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem>(
              map['searchAddOns'],
              (value) =>
                  GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem
                      .fromValue(value as String)),
      searchTier: map['searchTier'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier
              .fromValue(map['searchTier'] as String),
    );
  }
}
