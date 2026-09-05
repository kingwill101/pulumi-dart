// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters {
  /// List of log types that the source is sending.
  final pulumi.Input<List<String>?>? logTypes;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters].
  /// [logTypes] List of log types that the source is sending.
  const TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters({
    this.logTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logTypes': ?logTypes,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters(
      logTypes: (() { final guardedValue = map['logTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
