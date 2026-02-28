// ignore_for_file: unused_element, unnecessary_cast

import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_issue_detection_configuration.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_keyword_match_configuration.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_sentiment_configuration.dart';

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule {
  /// Configuration for an issue detection rule.
  final MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration?
      issueDetectionConfiguration;

  /// Configuration for a keyword match rule.
  final MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration?
      keywordMatchConfiguration;

  /// Configuration for a sentiment rule.
  final MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration?
      sentimentConfiguration;

  /// Rule type.
  final String type;

  /// Creates a new [MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule].
  /// [issueDetectionConfiguration] Configuration for an issue detection rule.
  /// [keywordMatchConfiguration] Configuration for a keyword match rule.
  /// [sentimentConfiguration] Configuration for a sentiment rule.
  /// [type] Rule type.
  MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule({
    this.issueDetectionConfiguration,
    this.keywordMatchConfiguration,
    this.sentimentConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issueDetectionConfigurationValue = issueDetectionConfiguration;
    if (issueDetectionConfigurationValue != null) {
      map['issueDetectionConfiguration'] =
          issueDetectionConfigurationValue.toMap();
    }
    final keywordMatchConfigurationValue = keywordMatchConfiguration;
    if (keywordMatchConfigurationValue != null) {
      map['keywordMatchConfiguration'] = keywordMatchConfigurationValue.toMap();
    }
    final sentimentConfigurationValue = sentimentConfiguration;
    if (sentimentConfigurationValue != null) {
      map['sentimentConfiguration'] = sentimentConfigurationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule(
      issueDetectionConfiguration: map['issueDetectionConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration
              .fromMap((map['issueDetectionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      keywordMatchConfiguration: map['keywordMatchConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration
              .fromMap((map['keywordMatchConfiguration'] as Map)
                  .cast<String, dynamic>()),
      sentimentConfiguration: map['sentimentConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration
              .fromMap((map['sentimentConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
