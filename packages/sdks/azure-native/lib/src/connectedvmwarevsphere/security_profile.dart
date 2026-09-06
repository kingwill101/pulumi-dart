// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_settings.dart';

/// Specifies the Security profile settings for the virtual machine.
class SecurityProfile {
  /// Specifies the security settings like secure boot used while creating the virtual machine.
  final pulumi.Input<UefiSettings?>? uefiSettings;

  /// Creates a new [SecurityProfile].
  /// [uefiSettings] Specifies the security settings like secure boot used while creating the virtual machine.
  const SecurityProfile({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
