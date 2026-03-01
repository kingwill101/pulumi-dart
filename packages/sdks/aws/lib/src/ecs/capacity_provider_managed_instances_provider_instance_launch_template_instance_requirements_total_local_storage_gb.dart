// ignore_for_file: unused_element, unnecessary_cast


class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb {
  final double? max;
  final double? min;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb].
  /// [max] Optional.
  /// [min] Optional.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsTotalLocalStorageGb(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

