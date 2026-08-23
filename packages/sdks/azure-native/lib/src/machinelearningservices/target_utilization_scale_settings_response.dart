// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetUtilizationScaleSettingsResponse {
  /// The maximum number of instances that the deployment can scale to. The quota will be reserved for max_instances.
  final pulumi.Input<int>? maxInstances;
  /// The minimum number of instances to always be present.
  final pulumi.Input<int>? minInstances;
  /// The polling interval in ISO 8691 format. Only supports duration with precision as low as Seconds.
  final pulumi.Input<String>? pollingInterval;
  /// Expected value is 'TargetUtilization'.
  final pulumi.Input<String> scaleType;
  /// Target CPU usage for the autoscaler.
  final pulumi.Input<int>? targetUtilizationPercentage;

  /// Creates a new [TargetUtilizationScaleSettingsResponse].
  /// [maxInstances] The maximum number of instances that the deployment can scale to. The quota will be reserved for max_instances.
  /// [minInstances] The minimum number of instances to always be present.
  /// [pollingInterval] The polling interval in ISO 8691 format. Only supports duration with precision as low as Seconds.
  /// [scaleType] Expected value is 'TargetUtilization'.
  /// [targetUtilizationPercentage] Target CPU usage for the autoscaler.
  const TargetUtilizationScaleSettingsResponse({
    this.maxInstances,
    this.minInstances,
    this.pollingInterval,
    required this.scaleType,
    this.targetUtilizationPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'pollingInterval': ?pollingInterval,
      'scaleType': scaleType,
      'targetUtilizationPercentage': ?targetUtilizationPercentage,
    };
  }

  factory TargetUtilizationScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TargetUtilizationScaleSettingsResponse(
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollingInterval: (() { final guardedValue = map['pollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleType: pulumi.Input.fromValue(map['scaleType'] as String),
      targetUtilizationPercentage: (() { final guardedValue = map['targetUtilizationPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
