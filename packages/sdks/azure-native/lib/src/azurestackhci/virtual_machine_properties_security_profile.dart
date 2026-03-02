// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_uefi_settings.dart';

/// SecurityProfile - Specifies the security settings for the virtual machine.
class VirtualMachinePropertiesSecurityProfile {
  final pulumi.Input<bool>? enableTPM;
  final pulumi.Input<VirtualMachinePropertiesUefiSettings>? uefiSettings;

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
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesUefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesSecurityProfile(
      enableTPM: map['enableTPM'] == null ? null : (map['enableTPM'] as bool).input(),
      uefiSettings: map['uefiSettings'] == null ? null : (VirtualMachinePropertiesUefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

