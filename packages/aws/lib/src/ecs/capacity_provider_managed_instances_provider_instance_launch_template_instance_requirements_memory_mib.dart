// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib {
  final int? max;
  final int min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib].
  /// [max] Optional.
  /// [min] Required.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    map['min'] = min;
    return map;
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
