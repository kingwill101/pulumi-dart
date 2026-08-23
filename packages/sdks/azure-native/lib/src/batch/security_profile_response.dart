// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_settings_response.dart';

/// Specifies the security profile settings for the virtual machine or virtual machine scale set.
class SecurityProfileResponse {
  /// This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  final pulumi.Input<bool>? encryptionAtHost;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  final pulumi.Input<String>? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  final pulumi.Input<UefiSettingsResponse>? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  const SecurityProfileResponse({
    this.encryptionAtHost,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'securityType': ?securityType,
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettingsResponse, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      encryptionAtHost: (() { final guardedValue = map['encryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
