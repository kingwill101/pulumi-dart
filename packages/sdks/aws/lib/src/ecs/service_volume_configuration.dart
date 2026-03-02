// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_volume_configuration_managed_ebs_volume.dart';

class ServiceVolumeConfiguration {
  /// Configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. See below.
  final pulumi.Input<ServiceVolumeConfigurationManagedEbsVolume> managedEbsVolume;
  /// Name of the volume.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceVolumeConfiguration].
  /// [managedEbsVolume] Configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. See below.
  /// [name] Name of the volume.
  ServiceVolumeConfiguration({
    required this.managedEbsVolume,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedEbsVolume': pulumi.Input.mapInputValue<ServiceVolumeConfigurationManagedEbsVolume, Map<String, dynamic>>(managedEbsVolume, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ServiceVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceVolumeConfiguration(
      managedEbsVolume: (ServiceVolumeConfigurationManagedEbsVolume.fromMap((map['managedEbsVolume']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

