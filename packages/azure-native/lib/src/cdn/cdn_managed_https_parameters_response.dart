// ignore_for_file: unused_element, unnecessary_cast

import 'cdn_certificate_source_parameters_response.dart';

/// Defines the certificate source parameters using CDN managed certificate for enabling SSL.
class CdnManagedHttpsParametersResponse {
  /// Defines the source of the SSL certificate.
  /// Expected value is 'Cdn'.
  final String certificateSource;
  /// Defines the certificate source parameters using CDN managed certificate for enabling SSL.
  final CdnCertificateSourceParametersResponse certificateSourceParameters;
  /// TLS protocol version that will be used for Https
  final String? minimumTlsVersion;
  /// Defines the TLS extension protocol that is used for secure delivery.
  final String protocolType;

  /// Creates a new [CdnManagedHttpsParametersResponse].
  /// [certificateSource] Defines the source of the SSL certificate.
  /// [certificateSourceParameters] Defines the certificate source parameters using CDN managed certificate for enabling SSL.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https
  /// [protocolType] Defines the TLS extension protocol that is used for secure delivery.
  CdnManagedHttpsParametersResponse({
    required this.certificateSource,
    required this.certificateSourceParameters,
    this.minimumTlsVersion,
    required this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateSource': certificateSource,
      'certificateSourceParameters': certificateSourceParameters.toMap(),
      'minimumTlsVersion': ?minimumTlsVersion,
      'protocolType': protocolType,
    };
  }

  factory CdnManagedHttpsParametersResponse.fromMap(Map<String, dynamic> map) {
    return CdnManagedHttpsParametersResponse(
      certificateSource: map['certificateSource'] as String,
      certificateSourceParameters: CdnCertificateSourceParametersResponse.fromMap((map['certificateSourceParameters'] as Map).cast<String, dynamic>()),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      protocolType: map['protocolType'] as String,
    );
  }
}

