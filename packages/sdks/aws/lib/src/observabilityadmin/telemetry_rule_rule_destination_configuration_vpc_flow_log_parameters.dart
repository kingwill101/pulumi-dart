// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters {
  /// Format string for VPC Flow Log entries.
  final pulumi.Input<String>? logFormat;
  /// Maximum interval (in seconds) between the capture of flow log records. Valid values: `60`, `600`.
  final pulumi.Input<int>? maxAggregationInterval;
  /// Type of traffic to log. Valid values: `ACCEPT`, `REJECT`, `ALL`.
  final pulumi.Input<String>? trafficType;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters].
  /// [logFormat] Format string for VPC Flow Log entries.
  /// [maxAggregationInterval] Maximum interval (in seconds) between the capture of flow log records. Valid values: `60`, `600`.
  /// [trafficType] Type of traffic to log. Valid values: `ACCEPT`, `REJECT`, `ALL`.
  const TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters({
    this.logFormat,
    this.maxAggregationInterval,
    this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFormat': ?logFormat,
      'maxAggregationInterval': ?maxAggregationInterval,
      'trafficType': ?trafficType,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters(
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAggregationInterval: (() { final guardedValue = map['maxAggregationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trafficType: (() { final guardedValue = map['trafficType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
