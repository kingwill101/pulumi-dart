// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_certificate_source_parameters_response.dart';

/// Defines the certificate source parameters using user's keyvault certificate for enabling SSL.
class UserManagedHttpsParametersResponse {
  /// Defines the source of the SSL certificate.
  /// Expected value is 'AzureKeyVault'.
  final pulumi.Input<String> certificateSource;
  /// Defines the certificate source parameters using user's keyvault certificate for enabling SSL.
  final pulumi.Input<KeyVaultCertificateSourceParametersResponse> certificateSourceParameters;
  /// TLS protocol version that will be used for Https
  final pulumi.Input<String>? minimumTlsVersion;
  /// Defines the TLS extension protocol that is used for secure delivery.
  final pulumi.Input<String> protocolType;

  /// Creates a new [UserManagedHttpsParametersResponse].
  /// [certificateSource] Defines the source of the SSL certificate.
  /// [certificateSourceParameters] Defines the certificate source parameters using user's keyvault certificate for enabling SSL.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https
  /// [protocolType] Defines the TLS extension protocol that is used for secure delivery.
  const UserManagedHttpsParametersResponse({
    required this.certificateSource,
    required this.certificateSourceParameters,
    this.minimumTlsVersion,
    required this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateSource': certificateSource,
      'certificateSourceParameters': pulumi.Input.mapInputValue<KeyVaultCertificateSourceParametersResponse, Map<String, dynamic>>(certificateSourceParameters, (value) => value.toMap()),
      'minimumTlsVersion': ?minimumTlsVersion,
      'protocolType': protocolType,
    };
  }

  factory UserManagedHttpsParametersResponse.fromMap(Map<String, dynamic> map) {
    return UserManagedHttpsParametersResponse(
      certificateSource: pulumi.Input.fromValue(map['certificateSource'] as String),
      certificateSourceParameters: pulumi.Input.fromValue(KeyVaultCertificateSourceParametersResponse.fromMap((map['certificateSourceParameters']! as Map).cast<String, dynamic>())),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
    );
  }
}
