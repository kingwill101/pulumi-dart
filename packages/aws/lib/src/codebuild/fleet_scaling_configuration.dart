// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_scaling_configuration_target_tracking_scaling_config.dart';

class FleetScalingConfiguration {
  final int? desiredCapacity;

  /// Maximum number of instances in the ﬂeet when auto-scaling.
  final int? maxCapacity;

  /// Scaling type for a compute fleet. Valid value: `TARGET_TRACKING_SCALING`.
  final String? scalingType;

  /// Configuration block. Detailed below.
  final List<FleetScalingConfigurationTargetTrackingScalingConfig>?
      targetTrackingScalingConfigs;

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
    final map = <String, dynamic>{};
    final desiredCapacityValue = desiredCapacity;
    if (desiredCapacityValue != null) {
      map['desiredCapacity'] = desiredCapacityValue;
    }
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final scalingTypeValue = scalingType;
    if (scalingTypeValue != null) {
      map['scalingType'] = scalingTypeValue;
    }
    final targetTrackingScalingConfigsValue = targetTrackingScalingConfigs;
    if (targetTrackingScalingConfigsValue != null) {
      map['targetTrackingScalingConfigs'] = pulumi.Input.encodeList<
              FleetScalingConfigurationTargetTrackingScalingConfig,
              Map<String, dynamic>>(
          targetTrackingScalingConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FleetScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetScalingConfiguration(
      desiredCapacity:
          map['desiredCapacity'] == null ? null : map['desiredCapacity'] as int,
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      scalingType:
          map['scalingType'] == null ? null : map['scalingType'] as String,
      targetTrackingScalingConfigs: map['targetTrackingScalingConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  FleetScalingConfigurationTargetTrackingScalingConfig>(
              map['targetTrackingScalingConfigs'],
              (value) =>
                  FleetScalingConfigurationTargetTrackingScalingConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
