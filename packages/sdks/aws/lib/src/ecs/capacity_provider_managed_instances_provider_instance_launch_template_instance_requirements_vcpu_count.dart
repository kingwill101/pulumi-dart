// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount {
  final pulumi.Input<int>? max;
  final pulumi.Input<int> min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount].
  /// [max] Optional.
  /// [min] Required.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': min};
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}
