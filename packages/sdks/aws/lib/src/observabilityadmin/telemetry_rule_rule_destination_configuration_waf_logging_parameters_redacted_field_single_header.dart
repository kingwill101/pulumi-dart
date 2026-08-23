// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader {
  /// Header name to redact (up to 64 characters).
  final pulumi.Input<String> name;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader].
  /// [name] Header name to redact (up to 64 characters).
  const TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
