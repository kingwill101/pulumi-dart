// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity_response.dart';
import 'proxy_agent_settings_response.dart';
import 'uefi_settings_response.dart';

/// Specifies the Security profile settings for the virtual machine or virtual
/// machine scale set.
class SecurityProfileResponse {
  /// This property can be used by user in the request to enable or disable the Host
  /// Encryption for the virtual machine or virtual machine scale set. This will
  /// enable the encryption for all the disks including Resource/Temp disk at host
  /// itself. The default behavior is: The Encryption at host will be disabled unless
  /// this property is set to true for the resource.
  final pulumi.Input<bool>? encryptionAtHost;
  /// Specifies the Managed Identity used by ADE to get access token for keyvault
  /// operations.
  final pulumi.Input<EncryptionIdentityResponse>? encryptionIdentity;
  /// Specifies ProxyAgent settings while creating the virtual machine. Minimum
  /// api-version: 2023-09-01.
  final pulumi.Input<ProxyAgentSettingsResponse>? proxyAgentSettings;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any
  /// specified value to enable UefiSettings. The default behavior is: UefiSettings
  /// will not be enabled unless this property is set.
  final pulumi.Input<String>? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating
  /// the virtual machine. Minimum api-version: 2020-12-01.
  final pulumi.Input<UefiSettingsResponse>? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host
  /// [encryptionIdentity] Specifies the Managed Identity used by ADE to get access token for keyvault
  /// [proxyAgentSettings] Specifies ProxyAgent settings while creating the virtual machine. Minimum
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating
  const SecurityProfileResponse({
    this.encryptionAtHost,
    this.encryptionIdentity,
    this.proxyAgentSettings,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'encryptionIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentityResponse, Map<String, dynamic>>(encryptionIdentity, (value) => value.toMap()),
      'proxyAgentSettings': ?pulumi.Input.mapOptionalInputValue<ProxyAgentSettingsResponse, Map<String, dynamic>>(proxyAgentSettings, (value) => value.toMap()),
      'securityType': ?securityType,
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettingsResponse, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      encryptionAtHost: (() { final guardedValue = map['encryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionIdentity: (() { final guardedValue = map['encryptionIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyAgentSettings: (() { final guardedValue = map['proxyAgentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyAgentSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
