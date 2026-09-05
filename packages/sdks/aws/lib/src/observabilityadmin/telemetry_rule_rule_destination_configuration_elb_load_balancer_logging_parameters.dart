// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters {
  /// Delimiter character used to separate fields in ELB access log entries when using plain text format.
  final pulumi.Input<String?>? fieldDelimiter;
  /// Format for ELB access log entries. Valid values: `plain-text`, `json`.
  final pulumi.Input<String?>? outputFormat;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters].
  /// [fieldDelimiter] Delimiter character used to separate fields in ELB access log entries when using plain text format.
  /// [outputFormat] Format for ELB access log entries. Valid values: `plain-text`, `json`.
  const TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters({
    this.fieldDelimiter,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldDelimiter': ?fieldDelimiter,
      'outputFormat': ?outputFormat,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters(
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
