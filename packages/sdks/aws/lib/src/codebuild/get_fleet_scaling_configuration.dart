// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_scaling_configuration_target_tracking_scaling_config.dart';

class GetFleetScalingConfiguration {
  /// The desired number of instances in the ﬂeet when auto-scaling.
  final pulumi.Input<int> desiredCapacity;
  /// The maximum number of instances in the ﬂeet when auto-scaling.
  final pulumi.Input<int> maxCapacity;
  /// The scaling type for a compute fleet.
  final pulumi.Input<String> scalingType;
  /// Nested attribute containing information about thresholds when new instance is auto-scaled into the compute fleet.
  final pulumi.Input<List<GetFleetScalingConfigurationTargetTrackingScalingConfig>> targetTrackingScalingConfigs;

  /// Creates a new [GetFleetScalingConfiguration].
  /// [desiredCapacity] The desired number of instances in the ﬂeet when auto-scaling.
  /// [maxCapacity] The maximum number of instances in the ﬂeet when auto-scaling.
  /// [scalingType] The scaling type for a compute fleet.
  /// [targetTrackingScalingConfigs] Nested attribute containing information about thresholds when new instance is auto-scaled into the compute fleet.
  const GetFleetScalingConfiguration({
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
      'targetTrackingScalingConfigs': pulumi.Input.mapInputValue<List<GetFleetScalingConfigurationTargetTrackingScalingConfig>, List<Map<String, dynamic>>>(targetTrackingScalingConfigs, (value) => pulumi.Input.encodeList<GetFleetScalingConfigurationTargetTrackingScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFleetScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFleetScalingConfiguration(
      desiredCapacity: pulumi.Input.fromValue((map['desiredCapacity'] as num).toInt()),
      maxCapacity: pulumi.Input.fromValue((map['maxCapacity'] as num).toInt()),
      scalingType: pulumi.Input.fromValue(map['scalingType'] as String),
      targetTrackingScalingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFleetScalingConfigurationTargetTrackingScalingConfig>(map['targetTrackingScalingConfigs']!, (value) => GetFleetScalingConfigurationTargetTrackingScalingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
