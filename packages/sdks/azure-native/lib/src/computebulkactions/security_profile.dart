// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity.dart';
import 'proxy_agent_settings.dart';
import 'uefi_settings.dart';

/// Specifies the Security profile settings for the virtual machine or virtual machine scale set.
class SecurityProfile {
  /// This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. The default behavior is: The Encryption at host will be disabled unless this property is set to true for the resource.
  final pulumi.Input<bool?>? encryptionAtHost;
  /// Specifies the Managed Identity used by ADE to get access token for keyvault operations.
  final pulumi.Input<EncryptionIdentity?>? encryptionIdentity;
  /// Specifies ProxyAgent settings while creating the virtual machine. Minimum compute api-version: 2023-09-01.
  final pulumi.Input<ProxyAgentSettings?>? proxyAgentSettings;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings. The default behavior is: UefiSettings will not be enabled unless this property is set.
  final pulumi.Input<dynamic>? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating the virtual machine. Minimum compute api-version: 2020-12-01.
  final pulumi.Input<UefiSettings?>? uefiSettings;

  /// Creates a new [SecurityProfile].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. The default behavior is: The Encryption at host will be disabled unless this property is set to true for the resource.
  /// [encryptionIdentity] Specifies the Managed Identity used by ADE to get access token for keyvault operations.
  /// [proxyAgentSettings] Specifies ProxyAgent settings while creating the virtual machine. Minimum compute api-version: 2023-09-01.
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings. The default behavior is: UefiSettings will not be enabled unless this property is set.
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating the virtual machine. Minimum compute api-version: 2020-12-01.
  const SecurityProfile({
    this.encryptionAtHost,
    this.encryptionIdentity,
    this.proxyAgentSettings,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'encryptionIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(encryptionIdentity, (value) => value.toMap()),
      'proxyAgentSettings': ?pulumi.Input.mapOptionalInputValue<ProxyAgentSettings, Map<String, dynamic>>(proxyAgentSettings, (value) => value.toMap()),
      'securityType': ?securityType,
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettings, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      encryptionAtHost: (() { final guardedValue = map['encryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionIdentity: (() { final guardedValue = map['encryptionIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyAgentSettings: (() { final guardedValue = map['proxyAgentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyAgentSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
