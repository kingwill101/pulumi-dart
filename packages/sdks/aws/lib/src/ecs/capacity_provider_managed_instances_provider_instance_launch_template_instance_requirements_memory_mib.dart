// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib {
  /// Maximum amount of memory, in MiB.
  final pulumi.Input<int?>? max;
  /// Minimum amount of memory, in MiB.
  final pulumi.Input<int> min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib].
  /// [max] Maximum amount of memory, in MiB.
  /// [min] Minimum amount of memory, in MiB.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': min,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      min: pulumi.Input.fromValue((map['min'] as num).toInt()),
    );
  }
}
