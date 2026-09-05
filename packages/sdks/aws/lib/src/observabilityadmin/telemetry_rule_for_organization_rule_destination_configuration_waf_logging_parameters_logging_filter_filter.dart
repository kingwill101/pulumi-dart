// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_logging_filter_filter_condition.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter {
  /// Action to take for matching log records. Valid values: `KEEP`, `DROP`.
  final pulumi.Input<String?>? behavior;
  /// Conditions that determine if a log record matches this filter. See `conditions` below.
  final pulumi.Input<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition>?>? conditions;
  /// Whether the log record must meet all conditions or any condition. Valid values: `MEETS_ALL`, `MEETS_ANY`.
  final pulumi.Input<String?>? requirement;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter].
  /// [behavior] Action to take for matching log records. Valid values: `KEEP`, `DROP`.
  /// [conditions] Conditions that determine if a log record matches this filter. See `conditions` below.
  /// [requirement] Whether the log record must meet all conditions or any condition. Valid values: `MEETS_ALL`, `MEETS_ANY`.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter({
    this.behavior,
    this.conditions,
    this.requirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requirement': ?requirement,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition>(guardedValue, (value) => TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requirement: (() { final guardedValue = map['requirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
