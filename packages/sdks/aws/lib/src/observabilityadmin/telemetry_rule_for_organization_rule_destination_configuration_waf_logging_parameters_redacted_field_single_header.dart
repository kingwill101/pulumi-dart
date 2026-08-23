// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader {
  /// Header name to redact (up to 64 characters).
  final pulumi.Input<String> name;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader].
  /// [name] Header name to redact (up to 64 characters).
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
