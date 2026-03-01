// ignore_for_file: unused_element, unnecessary_cast

import 'uefi_settings_response.dart';

/// Specifies the Security profile settings for the virtual machine.
class SecurityProfileResponse {
  /// Specifies the security settings like secure boot used while creating the virtual machine.
  final UefiSettingsResponse? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [uefiSettings] Specifies the security settings like secure boot used while creating the virtual machine.
  SecurityProfileResponse({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      uefiSettings: map['uefiSettings'] == null ? null : UefiSettingsResponse.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

