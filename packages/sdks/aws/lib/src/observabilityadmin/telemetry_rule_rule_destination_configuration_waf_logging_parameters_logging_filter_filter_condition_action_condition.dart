// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition {
  /// WAF action to match against. Valid values: `ALLOW`, `BLOCK`, `COUNT`, `CAPTCHA`, `CHALLENGE`, `EXCLUDED_AS_COUNT`.
  final pulumi.Input<String> action;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition].
  /// [action] WAF action to match against. Valid values: `ALLOW`, `BLOCK`, `COUNT`, `CAPTCHA`, `CHALLENGE`, `EXCLUDED_AS_COUNT`.
  const TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
