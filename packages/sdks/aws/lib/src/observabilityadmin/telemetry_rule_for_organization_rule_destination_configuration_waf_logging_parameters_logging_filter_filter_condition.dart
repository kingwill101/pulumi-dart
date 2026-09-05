// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_logging_filter_filter_condition_action_condition.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_logging_filter_filter_condition_label_name_condition.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition {
  /// Condition that matches based on the WAF action. See `actionCondition` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition?>? actionCondition;
  /// Condition that matches based on WAF rule labels. See `labelNameCondition` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition?>? labelNameCondition;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition].
  /// [actionCondition] Condition that matches based on the WAF action. See `actionCondition` below.
  /// [labelNameCondition] Condition that matches based on WAF rule labels. See `labelNameCondition` below.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
      'labelNameCondition': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition, Map<String, dynamic>>(labelNameCondition, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition(
      actionCondition: (() { final guardedValue = map['actionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelNameCondition: (() { final guardedValue = map['labelNameCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
