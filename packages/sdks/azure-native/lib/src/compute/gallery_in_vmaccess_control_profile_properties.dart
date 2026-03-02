// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_types.dart';
import 'operating_system_types.dart';

/// Describes the properties of a gallery inVMAccessControlProfile.
class GalleryInVMAccessControlProfileProperties {
  /// This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  final pulumi.Input<EndpointTypes> applicableHostEndpoint;
  /// The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  final pulumi.Input<String>? description;
  /// This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  final pulumi.Input<OperatingSystemTypes> osType;

  /// Creates a new [GalleryInVMAccessControlProfileProperties].
  /// [applicableHostEndpoint] This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  /// [description] The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  /// [osType] This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  GalleryInVMAccessControlProfileProperties({
    required this.applicableHostEndpoint,
    this.description,
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicableHostEndpoint': pulumi.Input.mapInputValue<EndpointTypes, String>(applicableHostEndpoint, (value) => value.value),
      'description': ?description,
      'osType': pulumi.Input.mapInputValue<OperatingSystemTypes, String>(osType, (value) => value.value),
    };
  }

  factory GalleryInVMAccessControlProfileProperties.fromMap(Map<String, dynamic> map) {
    return GalleryInVMAccessControlProfileProperties(
      applicableHostEndpoint: (EndpointTypes.fromValue(map['applicableHostEndpoint'] as String)).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      osType: (OperatingSystemTypes.fromValue(map['osType'] as String)).input(),
    );
  }
}

