// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu {
  final double? max;
  final double? min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu].
  /// [max] Optional.
  /// [min] Optional.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu({
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

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryGibPerVcpu(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
