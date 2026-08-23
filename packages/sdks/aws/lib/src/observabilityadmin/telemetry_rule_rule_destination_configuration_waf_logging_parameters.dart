// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters_logging_filter.dart';
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters_redacted_field.dart';

class TelemetryRuleRuleDestinationConfigurationWafLoggingParameters {
  /// Type of WAF logs to collect (currently `WAF_LOGS`).
  final pulumi.Input<String>? logType;
  /// Filter configuration that determines which WAF log records to include or exclude. See `loggingFilter` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter>? loggingFilter;
  /// List of fields to redact from WAF logs. See `redactedFields` below.
  final pulumi.Input<List<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField>>? redactedFields;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationWafLoggingParameters].
  /// [logType] Type of WAF logs to collect (currently `WAF_LOGS`).
  /// [loggingFilter] Filter configuration that determines which WAF log records to include or exclude. See `loggingFilter` below.
  /// [redactedFields] List of fields to redact from WAF logs. See `redactedFields` below.
  const TelemetryRuleRuleDestinationConfigurationWafLoggingParameters({
    this.logType,
    this.loggingFilter,
    this.redactedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'loggingFilter': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter, Map<String, dynamic>>(loggingFilter, (value) => value.toMap()),
      'redactedFields': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField>, List<Map<String, dynamic>>>(redactedFields, (value) => pulumi.Input.encodeList<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationWafLoggingParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationWafLoggingParameters(
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingFilter: (() { final guardedValue = map['loggingFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redactedFields: (() { final guardedValue = map['redactedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField>(guardedValue, (value) => TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
