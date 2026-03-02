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
  UserManagedHttpsParametersResponse({
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
      certificateSource: (map['certificateSource'] as String).input(),
      certificateSourceParameters: (KeyVaultCertificateSourceParametersResponse.fromMap((map['certificateSourceParameters'] as Map).cast<String, dynamic>())).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      protocolType: (map['protocolType'] as String).input(),
    );
  }
}

