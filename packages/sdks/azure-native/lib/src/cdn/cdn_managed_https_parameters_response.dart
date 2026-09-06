// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_certificate_source_parameters_response.dart';

/// Defines the certificate source parameters using CDN managed certificate for enabling SSL.
class CdnManagedHttpsParametersResponse {
  /// Defines the source of the SSL certificate.
  /// Expected value is 'Cdn'.
  final pulumi.Input<String> certificateSource;
  /// Defines the certificate source parameters using CDN managed certificate for enabling SSL.
  final pulumi.Input<CdnCertificateSourceParametersResponse> certificateSourceParameters;
  /// TLS protocol version that will be used for Https
  final pulumi.Input<String?>? minimumTlsVersion;
  /// Defines the TLS extension protocol that is used for secure delivery.
  final pulumi.Input<String> protocolType;

  /// Creates a new [CdnManagedHttpsParametersResponse].
  /// [certificateSource] Defines the source of the SSL certificate.
  /// [certificateSourceParameters] Defines the certificate source parameters using CDN managed certificate for enabling SSL.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https
  /// [protocolType] Defines the TLS extension protocol that is used for secure delivery.
  const CdnManagedHttpsParametersResponse({
    required this.certificateSource,
    required this.certificateSourceParameters,
    this.minimumTlsVersion,
    required this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateSource': certificateSource,
      'certificateSourceParameters': pulumi.Input.mapInputValue<CdnCertificateSourceParametersResponse, Map<String, dynamic>>(certificateSourceParameters, (value) => value.toMap()),
      'minimumTlsVersion': ?minimumTlsVersion,
      'protocolType': protocolType,
    };
  }

  factory CdnManagedHttpsParametersResponse.fromMap(Map<String, dynamic> map) {
    return CdnManagedHttpsParametersResponse(
      certificateSource: pulumi.Input.fromValue(map['certificateSource'] as String),
      certificateSourceParameters: pulumi.Input.fromValue(CdnCertificateSourceParametersResponse.fromMap((map['certificateSourceParameters']! as Map).cast<String, dynamic>())),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
    );
  }
}
