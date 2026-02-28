// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib {
  final int? max;
  final int? min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib].
  /// [max] Optional.
  /// [min] Optional.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
