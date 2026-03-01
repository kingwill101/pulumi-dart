// ignore_for_file: unused_element, unnecessary_cast


/// Uefi settings - Specifies whether secure boot should be enabled on the virtual machine instance.
class VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse {
  /// Specifies whether secure boot should be enabled on the virtual machine instance.
  final bool? secureBootEnabled;

  /// Creates a new [VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine instance.
  VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled'] as bool,
    );
  }
}

