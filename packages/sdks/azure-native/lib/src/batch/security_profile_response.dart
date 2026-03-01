// ignore_for_file: unused_element, unnecessary_cast

import 'uefi_settings_response.dart';

/// Specifies the security profile settings for the virtual machine or virtual machine scale set.
class SecurityProfileResponse {
  /// This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  final bool? encryptionAtHost;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  final String? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  final UefiSettingsResponse? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  SecurityProfileResponse({
    this.encryptionAtHost,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'securityType': ?securityType,
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      encryptionAtHost: map['encryptionAtHost'] == null ? null : map['encryptionAtHost'] as bool,
      securityType: map['securityType'] == null ? null : map['securityType'] as String,
      uefiSettings: map['uefiSettings'] == null ? null : UefiSettingsResponse.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

