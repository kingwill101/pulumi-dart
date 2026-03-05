// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of a gallery inVMAccessControlProfile.
class GalleryInVMAccessControlProfilePropertiesResponse {
  /// This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  final pulumi.Input<String> applicableHostEndpoint;
  /// The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  final pulumi.Input<String>? description;
  /// This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  final pulumi.Input<String> osType;
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [GalleryInVMAccessControlProfilePropertiesResponse].
  /// [applicableHostEndpoint] This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  /// [description] The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  /// [osType] This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  /// [provisioningState] The provisioning state, which only appears in the response.
  GalleryInVMAccessControlProfilePropertiesResponse({
    required this.applicableHostEndpoint,
    this.description,
    required this.osType,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicableHostEndpoint': applicableHostEndpoint,
      'description': ?description,
      'osType': osType,
      'provisioningState': provisioningState,
    };
  }

  factory GalleryInVMAccessControlProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GalleryInVMAccessControlProfilePropertiesResponse(
      applicableHostEndpoint: pulumi.Input.fromValue(map['applicableHostEndpoint'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

