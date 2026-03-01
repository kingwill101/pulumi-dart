// ignore_for_file: unused_element, unnecessary_cast

import 'sds_config_response.dart';
import 'tls_certificate_paths_response.dart';

/// [Deprecated] Defines the mechanism to obtain the client or server certificate. Defines the mechanism to obtain the client or server certificate.
class TlsCertificateContextResponse {
  /// Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  final TlsCertificatePathsResponse certificatePaths;

  /// Defines how TLS certificates are obtained.
  final String certificateSource;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final SdsConfigResponse sdsConfig;

  /// Creates a new [TlsCertificateContextResponse].
  /// [certificatePaths] Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  /// [certificateSource] Defines how TLS certificates are obtained.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  TlsCertificateContextResponse({
    required this.certificatePaths,
    required this.certificateSource,
    required this.sdsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePaths': certificatePaths.toMap(),
      'certificateSource': certificateSource,
      'sdsConfig': sdsConfig.toMap(),
    };
  }

  factory TlsCertificateContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificateContextResponse(
      certificatePaths: TlsCertificatePathsResponse.fromMap(
        (map['certificatePaths'] as Map).cast<String, dynamic>(),
      ),
      certificateSource: map['certificateSource'] as String,
      sdsConfig: SdsConfigResponse.fromMap(
        (map['sdsConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
