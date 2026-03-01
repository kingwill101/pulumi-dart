// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_types.dart';
import 'operating_system_types.dart';

/// Describes the properties of a gallery inVMAccessControlProfile.
class GalleryInVMAccessControlProfileProperties {
  /// This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  final EndpointTypes applicableHostEndpoint;
  /// The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  final String? description;
  /// This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  final OperatingSystemTypes osType;

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
      'applicableHostEndpoint': applicableHostEndpoint.value,
      'description': ?description,
      'osType': osType.value,
    };
  }

  factory GalleryInVMAccessControlProfileProperties.fromMap(Map<String, dynamic> map) {
    return GalleryInVMAccessControlProfileProperties(
      applicableHostEndpoint: EndpointTypes.fromValue(map['applicableHostEndpoint'] as String),
      description: map['description'] == null ? null : map['description'] as String,
      osType: OperatingSystemTypes.fromValue(map['osType'] as String),
    );
  }
}

