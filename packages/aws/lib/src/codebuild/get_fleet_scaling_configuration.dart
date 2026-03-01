// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_scaling_configuration_target_tracking_scaling_config.dart';

class GetFleetScalingConfiguration {
  /// The desired number of instances in the ﬂeet when auto-scaling.
  final int desiredCapacity;

  /// The maximum number of instances in the ﬂeet when auto-scaling.
  final int maxCapacity;

  /// The scaling type for a compute fleet.
  final String scalingType;

  /// Nested attribute containing information about thresholds when new instance is auto-scaled into the compute fleet.
  final List<GetFleetScalingConfigurationTargetTrackingScalingConfig>
  targetTrackingScalingConfigs;

  /// Creates a new [GetFleetScalingConfiguration].
  /// [desiredCapacity] The desired number of instances in the ﬂeet when auto-scaling.
  /// [maxCapacity] The maximum number of instances in the ﬂeet when auto-scaling.
  /// [scalingType] The scaling type for a compute fleet.
  /// [targetTrackingScalingConfigs] Nested attribute containing information about thresholds when new instance is auto-scaled into the compute fleet.
  GetFleetScalingConfiguration({
    required this.desiredCapacity,
    required this.maxCapacity,
    required this.scalingType,
    required this.targetTrackingScalingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredCapacity': desiredCapacity,
      'maxCapacity': maxCapacity,
      'scalingType': scalingType,
      'targetTrackingScalingConfigs':
          pulumi.Input.encodeList<
            GetFleetScalingConfigurationTargetTrackingScalingConfig,
            Map<String, dynamic>
          >(targetTrackingScalingConfigs, (value) => value.toMap()),
    };
  }

  factory GetFleetScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFleetScalingConfiguration(
      desiredCapacity: map['desiredCapacity'] as int,
      maxCapacity: map['maxCapacity'] as int,
      scalingType: map['scalingType'] as String,
      targetTrackingScalingConfigs:
          pulumi.Input.decodeList<
            GetFleetScalingConfigurationTargetTrackingScalingConfig
          >(
            map['targetTrackingScalingConfigs'],
            (value) =>
                GetFleetScalingConfigurationTargetTrackingScalingConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
