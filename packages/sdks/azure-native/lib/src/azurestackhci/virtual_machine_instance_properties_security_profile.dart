// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_properties_security_profile_uefi_settings.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine instance.
class VirtualMachineInstancePropertiesSecurityProfile {
  /// Enable TPM flag
  final pulumi.Input<bool>? enableTPM;
  /// Specifies the SecurityType of the virtual machine. EnableTPM and SecureBootEnabled must be set to true for SecurityType to function.
  final pulumi.Input<String>? securityType;
  /// Uefi settings of the virtual machine instance
  final pulumi.Input<VirtualMachineInstancePropertiesSecurityProfileUefiSettings>? uefiSettings;

  /// Creates a new [VirtualMachineInstancePropertiesSecurityProfile].
  /// [enableTPM] Enable TPM flag
  /// [securityType] Specifies the SecurityType of the virtual machine. EnableTPM and SecureBootEnabled must be set to true for SecurityType to function.
  /// [uefiSettings] Uefi settings of the virtual machine instance
  VirtualMachineInstancePropertiesSecurityProfile({
    this.enableTPM,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTPM': ?enableTPM,
      'securityType': ?securityType,
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesSecurityProfileUefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesSecurityProfile(
      enableTPM: map['enableTPM'] == null ? null : (map['enableTPM'] as bool).input(),
      securityType: map['securityType'] == null ? null : (map['securityType'] as String).input(),
      uefiSettings: map['uefiSettings'] == null ? null : (VirtualMachineInstancePropertiesSecurityProfileUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

