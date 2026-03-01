// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a gallery inVMAccessControlProfile.
class GalleryInVMAccessControlProfilePropertiesResponse {
  /// This property allows you to specify the Endpoint type for which this profile is defining the access control for. Possible values are: 'WireServer' or 'IMDS'
  final String applicableHostEndpoint;
  /// The description of this gallery inVMAccessControlProfile resources. This property is updatable.
  final String? description;
  /// This property allows you to specify the OS type of the VMs/VMSS for which this profile can be used against. Possible values are: 'Windows' or 'Linux'
  final String osType;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;

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
      applicableHostEndpoint: map['applicableHostEndpoint'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

