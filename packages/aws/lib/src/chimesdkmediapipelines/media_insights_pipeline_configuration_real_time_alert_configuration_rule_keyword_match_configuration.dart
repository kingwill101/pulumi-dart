// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration {
  /// Collection of keywords to match.
  final List<String> keywords;

  /// Negate the rule.
  final bool? negate;

  /// Rule name.
  final String ruleName;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration].
  /// [keywords] Collection of keywords to match.
  /// [negate] Negate the rule.
  /// [ruleName] Rule name.
  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration({
    required this.keywords,
    this.negate,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywords': keywords,
      'negate': ?negate,
      'ruleName': ruleName,
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration(
      keywords: (map['keywords'] as List).cast<String>(),
      negate: map['negate'] == null ? null : map['negate'] as bool,
      ruleName: map['ruleName'] as String,
    );
  }
}
