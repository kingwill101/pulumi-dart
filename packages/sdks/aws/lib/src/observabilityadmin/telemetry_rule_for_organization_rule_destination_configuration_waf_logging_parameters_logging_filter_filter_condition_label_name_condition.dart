// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition {
  /// Label name to match (alphanumeric, underscores, hyphens, and colons; up to 1024 characters).
  final pulumi.Input<String?>? labelName;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition].
  /// [labelName] Label name to match (alphanumeric, underscores, hyphens, and colons; up to 1024 characters).
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition({
    this.labelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': ?labelName,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionLabelNameCondition(
      labelName: (() { final guardedValue = map['labelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
