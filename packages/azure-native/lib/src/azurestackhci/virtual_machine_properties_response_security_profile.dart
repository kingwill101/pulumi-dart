// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_response_uefi_settings.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine.
class VirtualMachinePropertiesResponseSecurityProfile {
  final bool? enableTPM;
  final VirtualMachinePropertiesResponseUefiSettings? uefiSettings;

  /// Creates a new [VirtualMachinePropertiesResponseSecurityProfile].
  /// [enableTPM] Optional.
  /// [uefiSettings] Optional.
  VirtualMachinePropertiesResponseSecurityProfile({
    this.enableTPM,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTPM': ?enableTPM,
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory VirtualMachinePropertiesResponseSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseSecurityProfile(
      enableTPM: map['enableTPM'] == null ? null : map['enableTPM'] as bool,
      uefiSettings: map['uefiSettings'] == null ? null : VirtualMachinePropertiesResponseUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

