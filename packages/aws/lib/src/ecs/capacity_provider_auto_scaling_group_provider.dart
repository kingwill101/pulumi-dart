// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_provider_auto_scaling_group_provider_managed_scaling.dart';

class CapacityProviderAutoScalingGroupProvider {
  /// ARN of the associated auto scaling group.
  final String autoScalingGroupArn;

  /// Enables or disables a graceful shutdown of instances without disturbing workloads. Valid values are `ENABLED` and `DISABLED`. The default value is `ENABLED` when a capacity provider is created.
  final String? managedDraining;

  /// Configuration block defining the parameters of the auto scaling. Detailed below.
  final CapacityProviderAutoScalingGroupProviderManagedScaling? managedScaling;

  /// Enables or disables container-aware termination of instances in the auto scaling group when scale-in happens. Valid values are `ENABLED` and `DISABLED`.
  final String? managedTerminationProtection;

  /// Creates a new [CapacityProviderAutoScalingGroupProvider].
  /// [autoScalingGroupArn] ARN of the associated auto scaling group.
  /// [managedDraining] Enables or disables a graceful shutdown of instances without disturbing workloads. Valid values are `ENABLED` and `DISABLED`. The default value is `ENABLED` when a capacity provider is created.
  /// [managedScaling] Configuration block defining the parameters of the auto scaling. Detailed below.
  /// [managedTerminationProtection] Enables or disables container-aware termination of instances in the auto scaling group when scale-in happens. Valid values are `ENABLED` and `DISABLED`.
  CapacityProviderAutoScalingGroupProvider({
    required this.autoScalingGroupArn,
    this.managedDraining,
    this.managedScaling,
    this.managedTerminationProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScalingGroupArn'] = autoScalingGroupArn;
    final managedDrainingValue = managedDraining;
    if (managedDrainingValue != null) {
      map['managedDraining'] = managedDrainingValue;
    }
    final managedScalingValue = managedScaling;
    if (managedScalingValue != null) {
      map['managedScaling'] = managedScalingValue.toMap();
    }
    final managedTerminationProtectionValue = managedTerminationProtection;
    if (managedTerminationProtectionValue != null) {
      map['managedTerminationProtection'] = managedTerminationProtectionValue;
    }
    return map;
  }

  factory CapacityProviderAutoScalingGroupProvider.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderAutoScalingGroupProvider(
      autoScalingGroupArn: map['autoScalingGroupArn'] as String,
      managedDraining: map['managedDraining'] == null
          ? null
          : map['managedDraining'] as String,
      managedScaling: map['managedScaling'] == null
          ? null
          : CapacityProviderAutoScalingGroupProviderManagedScaling.fromMap(
              (map['managedScaling'] as Map).cast<String, dynamic>()),
      managedTerminationProtection: map['managedTerminationProtection'] == null
          ? null
          : map['managedTerminationProtection'] as String,
    );
  }
}
