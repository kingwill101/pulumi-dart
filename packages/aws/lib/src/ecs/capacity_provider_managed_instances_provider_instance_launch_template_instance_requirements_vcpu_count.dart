// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount {
  final int? max;
  final int min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount].
  /// [max] Optional.
  /// [min] Required.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount({
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

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
