// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_logging_filter.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_redacted_field.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters {
  /// Type of WAF logs to collect (currently `WAF_LOGS`).
  final pulumi.Input<String?>? logType;
  /// Filter configuration that determines which WAF log records to include or exclude. See `loggingFilter` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter?>? loggingFilter;
  /// List of fields to redact from WAF logs. See `redactedFields` below.
  final pulumi.Input<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedField>?>? redactedFields;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters].
  /// [logType] Type of WAF logs to collect (currently `WAF_LOGS`).
  /// [loggingFilter] Filter configuration that determines which WAF log records to include or exclude. See `loggingFilter` below.
  /// [redactedFields] List of fields to redact from WAF logs. See `redactedFields` below.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters({
    this.logType,
    this.loggingFilter,
    this.redactedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'loggingFilter': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter, Map<String, dynamic>>(loggingFilter, (value) => value.toMap()),
      'redactedFields': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedField>, List<Map<String, dynamic>>>(redactedFields, (value) => pulumi.Input.encodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters(
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingFilter: (() { final guardedValue = map['loggingFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redactedFields: (() { final guardedValue = map['redactedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedField>(guardedValue, (value) => TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
