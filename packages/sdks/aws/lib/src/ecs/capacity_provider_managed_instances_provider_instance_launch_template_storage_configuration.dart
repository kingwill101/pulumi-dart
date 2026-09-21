// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration {
  /// Size of the tasks volume in GiB. Must be at least 1.
  final pulumi.Input<int> storageSizeGib;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration].
  /// [storageSizeGib] Size of the tasks volume in GiB. Must be at least 1.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration({
    required this.storageSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSizeGib': storageSizeGib,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfiguration(
      storageSizeGib: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['storageSizeGib'])),
    );
  }
}
