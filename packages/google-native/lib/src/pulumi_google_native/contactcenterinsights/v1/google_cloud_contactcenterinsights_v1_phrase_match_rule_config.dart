// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_exact_match_config.dart';

/// Configuration information of a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig {
  /// The configuration for the exact match rule.
  final GoogleCloudContactcenterinsightsV1ExactMatchConfig? exactMatchConfig;

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig({
    this.exactMatchConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactMatchConfigValue = exactMatchConfig;
    if (exactMatchConfigValue != null) {
      map['exactMatchConfig'] = exactMatchConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(
      exactMatchConfig: map['exactMatchConfig'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromMap(
              (map['exactMatchConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
