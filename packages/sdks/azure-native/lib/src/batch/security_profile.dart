// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_types.dart';
import 'uefi_settings.dart';

/// Specifies the security profile settings for the virtual machine or virtual machine scale set.
class SecurityProfile {
  /// This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  final pulumi.Input<bool>? encryptionAtHost;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  final pulumi.Input<SecurityTypes>? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  final pulumi.Input<UefiSettings>? uefiSettings;

  /// Creates a new [SecurityProfile].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself.
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
  SecurityProfile({
    this.encryptionAtHost,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'securityType': ?pulumi.Input.mapOptionalInputValue<SecurityTypes, String>(securityType, (value) => value.value),
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      encryptionAtHost: map['encryptionAtHost'] == null ? null : (map['encryptionAtHost'] as bool).input(),
      securityType: map['securityType'] == null ? null : (SecurityTypes.fromValue(map['securityType'] as String)).input(),
      uefiSettings: map['uefiSettings'] == null ? null : (UefiSettings.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

