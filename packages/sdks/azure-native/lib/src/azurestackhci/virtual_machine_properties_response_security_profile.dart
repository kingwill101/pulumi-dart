// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_uefi_settings.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine.
class VirtualMachinePropertiesResponseSecurityProfile {
  final pulumi.Input<bool>? enableTPM;
  final pulumi.Input<VirtualMachinePropertiesResponseUefiSettings>? uefiSettings;

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
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesResponseUefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesResponseSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseSecurityProfile(
      enableTPM: map['enableTPM'] == null ? null : (map['enableTPM'] as bool).input(),
      uefiSettings: map['uefiSettings'] == null ? null : (VirtualMachinePropertiesResponseUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

