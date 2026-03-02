// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration {
  /// Collection of keywords to match.
  final pulumi.Input<List<String>> keywords;
  /// Negate the rule.
  final pulumi.Input<bool>? negate;
  /// Rule name.
  final pulumi.Input<String> ruleName;

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

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration(
      keywords: ((map['keywords'] as List).cast<String>()).input(),
      negate: map['negate'] == null ? null : ((map['negate'] as bool).input()).input(),
      ruleName: (map['ruleName'] as String).input(),
    );
  }
}

