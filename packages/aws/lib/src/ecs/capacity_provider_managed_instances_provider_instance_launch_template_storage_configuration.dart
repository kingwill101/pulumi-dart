// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration {
  /// The size of the tasks volume in GiB. Must be at least 1.
  final int storageSizeGib;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration].
  /// [storageSizeGib] The size of the tasks volume in GiB. Must be at least 1.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration({
    required this.storageSizeGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageSizeGib'] = storageSizeGib;
    return map;
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration(
      storageSizeGib: map['storageSizeGib'] as int,
    );
  }
}
