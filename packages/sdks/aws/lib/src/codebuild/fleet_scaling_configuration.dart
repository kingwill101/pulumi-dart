// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_scaling_configuration_target_tracking_scaling_config.dart';

class FleetScalingConfiguration {
  final pulumi.Input<int>? desiredCapacity;
  /// Maximum number of instances in the ﬂeet when auto-scaling.
  final pulumi.Input<int>? maxCapacity;
  /// Scaling type for a compute fleet. Valid value: `TARGET_TRACKING_SCALING`.
  final pulumi.Input<String>? scalingType;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<FleetScalingConfigurationTargetTrackingScalingConfig>>? targetTrackingScalingConfigs;

  /// Creates a new [FleetScalingConfiguration].
  /// [desiredCapacity] Optional.
  /// [maxCapacity] Maximum number of instances in the ﬂeet when auto-scaling.
  /// [scalingType] Scaling type for a compute fleet. Valid value: `TARGET_TRACKING_SCALING`.
  /// [targetTrackingScalingConfigs] Configuration block. Detailed below.
  FleetScalingConfiguration({
    this.desiredCapacity,
    this.maxCapacity,
    this.scalingType,
    this.targetTrackingScalingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredCapacity': ?desiredCapacity,
      'maxCapacity': ?maxCapacity,
      'scalingType': ?scalingType,
      'targetTrackingScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<FleetScalingConfigurationTargetTrackingScalingConfig>, List<Map<String, dynamic>>>(targetTrackingScalingConfigs, (value) => pulumi.Input.encodeList<FleetScalingConfigurationTargetTrackingScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetScalingConfiguration(
      desiredCapacity: map['desiredCapacity'] == null ? null : ((map['desiredCapacity'] as int).input()).input(),
      maxCapacity: map['maxCapacity'] == null ? null : ((map['maxCapacity'] as int).input()).input(),
      scalingType: map['scalingType'] == null ? null : ((map['scalingType'] as String).input()).input(),
      targetTrackingScalingConfigs: map['targetTrackingScalingConfigs'] == null ? null : ((pulumi.Input.decodeList<FleetScalingConfigurationTargetTrackingScalingConfig>(map['targetTrackingScalingConfigs']!, (value) => FleetScalingConfigurationTargetTrackingScalingConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

