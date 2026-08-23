// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters_logging_filter_filter_condition_action_condition.dart';
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters_logging_filter_filter_condition_label_name_condition.dart';

class TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition {
  /// Condition that matches based on the WAF action. See `actionCondition` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition>? actionCondition;
  /// Condition that matches based on WAF rule labels. See `labelNameCondition` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition>? labelNameCondition;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition].
  /// [actionCondition] Condition that matches based on the WAF action. See `actionCondition` below.
  /// [labelNameCondition] Condition that matches based on WAF rule labels. See `labelNameCondition` below.
  const TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
      'labelNameCondition': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition, Map<String, dynamic>>(labelNameCondition, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition(
      actionCondition: (() { final guardedValue = map['actionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelNameCondition: (() { final guardedValue = map['labelNameCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
