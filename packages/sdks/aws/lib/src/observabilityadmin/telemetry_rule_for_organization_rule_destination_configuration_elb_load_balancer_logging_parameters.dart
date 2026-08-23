// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters {
  /// Delimiter character used to separate fields in ELB access log entries when using plain text format.
  final pulumi.Input<String>? fieldDelimiter;
  /// Format for ELB access log entries. Valid values: `plain-text`, `json`.
  final pulumi.Input<String>? outputFormat;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters].
  /// [fieldDelimiter] Delimiter character used to separate fields in ELB access log entries when using plain text format.
  /// [outputFormat] Format for ELB access log entries. Valid values: `plain-text`, `json`.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters({
    this.fieldDelimiter,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldDelimiter': ?fieldDelimiter,
      'outputFormat': ?outputFormat,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters(
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
