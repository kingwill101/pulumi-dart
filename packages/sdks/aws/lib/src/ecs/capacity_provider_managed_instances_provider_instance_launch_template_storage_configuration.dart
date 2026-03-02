// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration {
  /// The size of the tasks volume in GiB. Must be at least 1.
  final pulumi.Input<int> storageSizeGib;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration].
  /// [storageSizeGib] The size of the tasks volume in GiB. Must be at least 1.
  CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration({
    required this.storageSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSizeGib': storageSizeGib,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration(
      storageSizeGib: (map['storageSizeGib'] as int).input(),
    );
  }
}

