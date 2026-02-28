// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_config_response.dart';

/// The data for a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse {
  /// Provides additional information about the rule that specifies how to apply the rule.
  final GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse config;

  /// Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  final bool negated;

  /// The phrase to be matched.
  final String query;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse].
  /// [config] Provides additional information about the rule that specifies how to apply the rule.
  /// [negated] Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  /// [query] The phrase to be matched.
  GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse({
    required this.config,
    required this.negated,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['negated'] = negated;
    map['query'] = query;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse(
      config: GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse
          .fromMap((map['config'] as Map).cast<String, dynamic>()),
      negated: map['negated'] as bool,
      query: map['query'] as String,
    );
  }
}
