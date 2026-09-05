// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters {
  /// Level of enhanced monitoring for the MSK cluster. Valid values: `DEFAULT`, `PER_BROKER`, `PER_TOPIC_PER_BROKER`, `PER_TOPIC_PER_PARTITION`.
  final pulumi.Input<String?>? enhancedMonitoring;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters].
  /// [enhancedMonitoring] Level of enhanced monitoring for the MSK cluster. Valid values: `DEFAULT`, `PER_BROKER`, `PER_TOPIC_PER_BROKER`, `PER_TOPIC_PER_PARTITION`.
  const TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters({
    this.enhancedMonitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enhancedMonitoring': ?enhancedMonitoring,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters(
      enhancedMonitoring: (() { final guardedValue = map['enhancedMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
