// ignore_for_file: unused_element, unnecessary_cast

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
  final bool? encryptionAtHost;
  /// Specifies the Managed Identity used by ADE to get access token for keyvault
  /// operations.
  final EncryptionIdentityResponse? encryptionIdentity;
  /// Specifies ProxyAgent settings while creating the virtual machine. Minimum
  /// api-version: 2023-09-01.
  final ProxyAgentSettingsResponse? proxyAgentSettings;
  /// Specifies the SecurityType of the virtual machine. It has to be set to any
  /// specified value to enable UefiSettings. The default behavior is: UefiSettings
  /// will not be enabled unless this property is set.
  final String? securityType;
  /// Specifies the security settings like secure boot and vTPM used while creating
  /// the virtual machine. Minimum api-version: 2020-12-01.
  final UefiSettingsResponse? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [encryptionAtHost] This property can be used by user in the request to enable or disable the Host
  /// [encryptionIdentity] Specifies the Managed Identity used by ADE to get access token for keyvault
  /// [proxyAgentSettings] Specifies ProxyAgent settings while creating the virtual machine. Minimum
  /// [securityType] Specifies the SecurityType of the virtual machine. It has to be set to any
  /// [uefiSettings] Specifies the security settings like secure boot and vTPM used while creating
  SecurityProfileResponse({
    this.encryptionAtHost,
    this.encryptionIdentity,
    this.proxyAgentSettings,
    this.securityType,
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAtHost': ?encryptionAtHost,
      'encryptionIdentity': ?encryptionIdentity == null ? null : encryptionIdentity!.toMap(),
      'proxyAgentSettings': ?proxyAgentSettings == null ? null : proxyAgentSettings!.toMap(),
      'securityType': ?securityType,
      'uefiSettings': ?uefiSettings == null ? null : uefiSettings!.toMap(),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      encryptionAtHost: map['encryptionAtHost'] == null ? null : map['encryptionAtHost'] as bool,
      encryptionIdentity: map['encryptionIdentity'] == null ? null : EncryptionIdentityResponse.fromMap((map['encryptionIdentity'] as Map).cast<String, dynamic>()),
      proxyAgentSettings: map['proxyAgentSettings'] == null ? null : ProxyAgentSettingsResponse.fromMap((map['proxyAgentSettings'] as Map).cast<String, dynamic>()),
      securityType: map['securityType'] == null ? null : map['securityType'] as String,
      uefiSettings: map['uefiSettings'] == null ? null : UefiSettingsResponse.fromMap((map['uefiSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

