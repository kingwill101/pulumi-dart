// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_uefi_settings.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine.
class VirtualMachinePropertiesSecurityProfile {
  final bool? enableTPM;
  final VirtualMachinePropertiesUefiSettings? uefiSettings;

  /// Creates a new [VirtualMachinePropertiesSecurityProfile].
  /// [enableTPM] Optional.
  /// [uefiSettings] Optional.
  VirtualMachinePropertiesSecurityProfile({
    this.enableTPM,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTPM': ?enableTPM,
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory VirtualMachinePropertiesSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesSecurityProfile(
      enableTPM: map['enableTPM'] == null ? null : map['enableTPM'] as bool,
      uefiSettings: map['uefiSettings'] == null ? null : VirtualMachinePropertiesUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

