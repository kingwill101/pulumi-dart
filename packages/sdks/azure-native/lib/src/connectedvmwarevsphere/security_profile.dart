// ignore_for_file: unused_element, unnecessary_cast

import 'uefi_settings.dart';

/// Specifies the Security profile settings for the virtual machine.
class SecurityProfile {
  /// Specifies the security settings like secure boot used while creating the virtual machine.
  final UefiSettings? uefiSettings;

  /// Creates a new [SecurityProfile].
  /// [uefiSettings] Specifies the security settings like secure boot used while creating the virtual machine.
  SecurityProfile({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      uefiSettings: map['uefiSettings'] == null ? null : UefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

