// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters_redacted_field_single_header.dart';

class TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField {
  /// Redact the HTTP method from WAF logs. Set to an empty string to enable redaction.
  final pulumi.Input<String?>? method;
  /// Redact the entire query string from WAF logs. Set to an empty string to enable redaction.
  final pulumi.Input<String?>? queryString;
  /// Redact a specific header by name from WAF logs. See `singleHeader` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader?>? singleHeader;
  /// Redact the URI path from WAF logs. Set to an empty string to enable redaction.
  final pulumi.Input<String?>? uriPath;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField].
  /// [method] Redact the HTTP method from WAF logs. Set to an empty string to enable redaction.
  /// [queryString] Redact the entire query string from WAF logs. Set to an empty string to enable redaction.
  /// [singleHeader] Redact a specific header by name from WAF logs. See `singleHeader` below.
  /// [uriPath] Redact the URI path from WAF logs. Set to an empty string to enable redaction.
  const TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedField(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleHeader: (() { final guardedValue = map['singleHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriPath: (() { final guardedValue = map['uriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
