// ignore_for_file: unused_element, unnecessary_cast

import 'service_volume_configuration_managed_ebs_volume.dart';

class ServiceVolumeConfiguration {
  /// Configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. See below.
  final ServiceVolumeConfigurationManagedEbsVolume managedEbsVolume;

  /// Name of the volume.
  final String name;

  /// Creates a new [ServiceVolumeConfiguration].
  /// [managedEbsVolume] Configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. See below.
  /// [name] Name of the volume.
  ServiceVolumeConfiguration({
    required this.managedEbsVolume,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedEbsVolume'] = managedEbsVolume.toMap();
    map['name'] = name;
    return map;
  }

  factory ServiceVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceVolumeConfiguration(
      managedEbsVolume: ServiceVolumeConfigurationManagedEbsVolume.fromMap(
          (map['managedEbsVolume'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
