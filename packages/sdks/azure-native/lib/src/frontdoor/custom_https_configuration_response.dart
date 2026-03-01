// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_certificate_source_parameters_response_vault.dart';

/// Https settings for a domain
class CustomHttpsConfigurationResponse {
  /// Defines the source of the SSL certificate
  final String certificateSource;
  /// Defines the type of the certificate used for secure connections to a frontendEndpoint
  final String? certificateType;
  /// The minimum TLS version required from the clients to establish an SSL handshake with Front Door.
  final String minimumTlsVersion;
  /// Defines the TLS extension protocol that is used for secure delivery
  final String protocolType;
  /// The name of the Key Vault secret representing the full certificate PFX
  final String? secretName;
  /// The version of the Key Vault secret representing the full certificate PFX
  final String? secretVersion;
  /// The Key Vault containing the SSL certificate
  final KeyVaultCertificateSourceParametersResponseVault? vault;

  /// Creates a new [CustomHttpsConfigurationResponse].
  /// [certificateSource] Defines the source of the SSL certificate
  /// [certificateType] Defines the type of the certificate used for secure connections to a frontendEndpoint
  /// [minimumTlsVersion] The minimum TLS version required from the clients to establish an SSL handshake with Front Door.
  /// [protocolType] Defines the TLS extension protocol that is used for secure delivery
  /// [secretName] The name of the Key Vault secret representing the full certificate PFX
  /// [secretVersion] The version of the Key Vault secret representing the full certificate PFX
  /// [vault] The Key Vault containing the SSL certificate
  CustomHttpsConfigurationResponse({
    required this.certificateSource,
    this.certificateType,
    required this.minimumTlsVersion,
    required this.protocolType,
    this.secretName,
    this.secretVersion,
    this.vault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateSource': certificateSource,
      'certificateType': ?certificateType,
      'minimumTlsVersion': minimumTlsVersion,
      'protocolType': protocolType,
      'secretName': ?secretName,
      'secretVersion': ?secretVersion,
      'vault': ?vault == null ? null : vault!.toMap(),
    };
  }

  factory CustomHttpsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationResponse(
      certificateSource: map['certificateSource'] as String,
      certificateType: map['certificateType'] == null ? null : map['certificateType'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      protocolType: map['protocolType'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
      vault: map['vault'] == null ? null : KeyVaultCertificateSourceParametersResponseVault.fromMap((map['vault'] as Map).cast<String, dynamic>()),
    );
  }
}

