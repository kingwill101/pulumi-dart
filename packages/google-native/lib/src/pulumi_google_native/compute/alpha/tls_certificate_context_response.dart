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

  TlsCertificateContextResponse({
    required this.certificatePaths,
    required this.certificateSource,
    required this.sdsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificatePaths'] = certificatePaths.toMap();
    map['certificateSource'] = certificateSource;
    map['sdsConfig'] = sdsConfig.toMap();
    return map;
  }

  factory TlsCertificateContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificateContextResponse(
      certificatePaths: TlsCertificatePathsResponse.fromMap(
          (map['certificatePaths'] as Map).cast<String, dynamic>()),
      certificateSource: map['certificateSource'] as String,
      sdsConfig: SdsConfigResponse.fromMap(
          (map['sdsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
