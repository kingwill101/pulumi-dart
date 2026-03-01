// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_instance_properties_security_profile_uefi_settings_response.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine instance.
class VirtualMachineInstancePropertiesSecurityProfileResponse {
  /// Enable TPM flag
  final bool? enableTPM;
  /// Specifies the SecurityType of the virtual machine. EnableTPM and SecureBootEnabled must be set to true for SecurityType to function.
  final String? securityType;
  /// Uefi settings of the virtual machine instance
  final VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse? uefiSettings;

  /// Creates a new [VirtualMachineInstancePropertiesSecurityProfileResponse].
  /// [enableTPM] Enable TPM flag
  /// [securityType] Specifies the SecurityType of the virtual machine. EnableTPM and SecureBootEnabled must be set to true for SecurityType to function.
  /// [uefiSettings] Uefi settings of the virtual machine instance
  VirtualMachineInstancePropertiesSecurityProfileResponse({
    this.enableTPM,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTPM': ?enableTPM,
      'securityType': ?securityType,
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory VirtualMachineInstancePropertiesSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesSecurityProfileResponse(
      enableTPM: map['enableTPM'] == null ? null : map['enableTPM'] as bool,
      securityType: map['securityType'] == null ? null : map['securityType'] as String,
      uefiSettings: map['uefiSettings'] == null ? null : VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

