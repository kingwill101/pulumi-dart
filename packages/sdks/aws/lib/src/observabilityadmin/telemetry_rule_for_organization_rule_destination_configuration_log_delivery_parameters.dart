// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters {
  /// List of log types that the source is sending.
  final pulumi.Input<List<String>?>? logTypes;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters].
  /// [logTypes] List of log types that the source is sending.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters({
    this.logTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logTypes': ?logTypes,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters(
      logTypes: (() { final guardedValue = map['logTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
