// ignore_for_file: unused_element, unnecessary_cast

import 'service_managed_ebsvolume_configuration_response.dart';

/// Definition of ServiceVolumeConfiguration
class ServiceVolumeConfigurationResponse {
  /// The configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. These settings are used to create each Amazon EBS volume, with one volume created for each task in the service. The Amazon EBS volumes are visible in your account in the Amazon EC2 console once they are created. The configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. These settings are used to create each Amazon EBS volume, with one volume created for each task in the service. Many of these parameters map 1:1 with the Amazon EBS ``CreateVolume`` API request parameters.
  final ServiceManagedEBSVolumeConfigurationResponse? managedEBSVolume;
  /// The name of the volume. This value must match the volume name from the ``Volume`` object in the task definition.
  final String? name;

  /// Creates a new [ServiceVolumeConfigurationResponse].
  /// [managedEBSVolume] The configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. These settings are used to create each Amazon EBS volume, with one volume created for each task in the service. The Amazon EBS volumes are visible in your account in the Amazon EC2 console once they are created. The configuration for the Amazon EBS volume that Amazon ECS creates and manages on your behalf. These settings are used to create each Amazon EBS volume, with one volume created for each task in the service. Many of these parameters map 1:1 with the Amazon EBS ``CreateVolume`` API request parameters.
  /// [name] The name of the volume. This value must match the volume name from the ``Volume`` object in the task definition.
  ServiceVolumeConfigurationResponse({
    this.managedEBSVolume,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedEBSVolume': ?managedEBSVolume == null ? null : managedEBSVolume!.toMap(),
      'name': ?name,
    };
  }

  factory ServiceVolumeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceVolumeConfigurationResponse(
      managedEBSVolume: map['managedEBSVolume'] == null ? null : ServiceManagedEBSVolumeConfigurationResponse.fromMap((map['managedEBSVolume'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

