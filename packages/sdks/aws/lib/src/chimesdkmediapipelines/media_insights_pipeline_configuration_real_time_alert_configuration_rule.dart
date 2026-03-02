// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_issue_detection_configuration.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_keyword_match_configuration.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration_rule_sentiment_configuration.dart';

class MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule {
  /// Configuration for an issue detection rule.
  final pulumi.Input<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration>? issueDetectionConfiguration;
  /// Configuration for a keyword match rule.
  final pulumi.Input<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration>? keywordMatchConfiguration;
  /// Configuration for a sentiment rule.
  final pulumi.Input<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration>? sentimentConfiguration;
  /// Rule type.
  final pulumi.Input<String> type;

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
    return <String, dynamic>{
      'issueDetectionConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration, Map<String, dynamic>>(issueDetectionConfiguration, (value) => value.toMap()),
      'keywordMatchConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration, Map<String, dynamic>>(keywordMatchConfiguration, (value) => value.toMap()),
      'sentimentConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration, Map<String, dynamic>>(sentimentConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRule(
      issueDetectionConfiguration: map['issueDetectionConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleIssueDetectionConfiguration.fromMap((map['issueDetectionConfiguration'] as Map).cast<String, dynamic>())).input(),
      keywordMatchConfiguration: map['keywordMatchConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleKeywordMatchConfiguration.fromMap((map['keywordMatchConfiguration'] as Map).cast<String, dynamic>())).input(),
      sentimentConfiguration: map['sentimentConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationRealTimeAlertConfigurationRuleSentimentConfiguration.fromMap((map['sentimentConfiguration'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

