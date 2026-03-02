// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_auto_scaling_group_provider_managed_scaling.dart';

class CapacityProviderAutoScalingGroupProvider {
  /// ARN of the associated auto scaling group.
  final pulumi.Input<String> autoScalingGroupArn;
  /// Enables or disables a graceful shutdown of instances without disturbing workloads. Valid values are `ENABLED` and `DISABLED`. The default value is `ENABLED` when a capacity provider is created.
  final pulumi.Input<String>? managedDraining;
  /// Configuration block defining the parameters of the auto scaling. Detailed below.
  final pulumi.Input<CapacityProviderAutoScalingGroupProviderManagedScaling>? managedScaling;
  /// Enables or disables container-aware termination of instances in the auto scaling group when scale-in happens. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? managedTerminationProtection;

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
    return <String, dynamic>{
      'autoScalingGroupArn': autoScalingGroupArn,
      'managedDraining': ?managedDraining,
      'managedScaling': ?pulumi.Input.mapOptionalInputValue<CapacityProviderAutoScalingGroupProviderManagedScaling, Map<String, dynamic>>(managedScaling, (value) => value.toMap()),
      'managedTerminationProtection': ?managedTerminationProtection,
    };
  }

  factory CapacityProviderAutoScalingGroupProvider.fromMap(Map<String, dynamic> map) {
    return CapacityProviderAutoScalingGroupProvider(
      autoScalingGroupArn: (map['autoScalingGroupArn'] as String).input(),
      managedDraining: map['managedDraining'] == null ? null : ((map['managedDraining'] as String).input()).input(),
      managedScaling: map['managedScaling'] == null ? null : ((CapacityProviderAutoScalingGroupProviderManagedScaling.fromMap((map['managedScaling']! as Map).cast<String, dynamic>())).input()).input(),
      managedTerminationProtection: map['managedTerminationProtection'] == null ? null : ((map['managedTerminationProtection'] as String).input()).input(),
    );
  }
}

