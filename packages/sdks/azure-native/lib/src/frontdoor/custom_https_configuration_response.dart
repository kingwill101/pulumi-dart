// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_certificate_source_parameters_vault_response.dart';

/// Https settings for a domain
class CustomHttpsConfigurationResponse {
  /// Defines the source of the SSL certificate
  final pulumi.Input<String> certificateSource;
  /// Defines the type of the certificate used for secure connections to a frontendEndpoint
  final pulumi.Input<String?>? certificateType;
  /// The minimum TLS version required from the clients to establish an SSL handshake with Front Door.
  final pulumi.Input<String> minimumTlsVersion;
  /// Defines the TLS extension protocol that is used for secure delivery
  final pulumi.Input<String> protocolType;
  /// The name of the Key Vault secret representing the full certificate PFX
  final pulumi.Input<String?>? secretName;
  /// The version of the Key Vault secret representing the full certificate PFX
  final pulumi.Input<String?>? secretVersion;
  /// The Key Vault containing the SSL certificate
  final pulumi.Input<KeyVaultCertificateSourceParametersVaultResponse?>? vault;

  /// Creates a new [CustomHttpsConfigurationResponse].
  /// [certificateSource] Defines the source of the SSL certificate
  /// [certificateType] Defines the type of the certificate used for secure connections to a frontendEndpoint
  /// [minimumTlsVersion] The minimum TLS version required from the clients to establish an SSL handshake with Front Door.
  /// [protocolType] Defines the TLS extension protocol that is used for secure delivery
  /// [secretName] The name of the Key Vault secret representing the full certificate PFX
  /// [secretVersion] The version of the Key Vault secret representing the full certificate PFX
  /// [vault] The Key Vault containing the SSL certificate
  const CustomHttpsConfigurationResponse({
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
      'vault': ?pulumi.Input.mapOptionalInputValue<KeyVaultCertificateSourceParametersVaultResponse, Map<String, dynamic>>(vault, (value) => value.toMap()),
    };
  }

  factory CustomHttpsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationResponse(
      certificateSource: pulumi.Input.fromValue(map['certificateSource'] as String),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: pulumi.Input.fromValue(map['minimumTlsVersion'] as String),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vault: (() { final guardedValue = map['vault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultCertificateSourceParametersVaultResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
