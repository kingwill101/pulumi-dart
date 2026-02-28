// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_config.dart';

/// The data for a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRule {
  /// Provides additional information about the rule that specifies how to apply the rule.
  final GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig? config;
  /// Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  final bool? negated;
  /// The phrase to be matched.
  final String query;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRule].
  /// [config] Provides additional information about the rule that specifies how to apply the rule.
  /// [negated] Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  /// [query] The phrase to be matched.
  GoogleCloudContactcenterinsightsV1PhraseMatchRule({
    this.config,
    this.negated,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : config!.toMap(),
      'negated': ?negated,
      'query': query,
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRule(
      config: map['config'] == null ? null : GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      negated: map['negated'] == null ? null : map['negated'] as bool,
      query: map['query'] as String,
    );
  }
}

