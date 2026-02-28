// ignore_for_file: unused_element, unnecessary_cast

import 'sds_config.dart';
import 'tls_certificate_context_certificate_source.dart';
import 'tls_certificate_paths.dart';

/// [Deprecated] Defines the mechanism to obtain the client or server certificate. Defines the mechanism to obtain the client or server certificate.
class TlsCertificateContext {
  /// Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  final TlsCertificatePaths? certificatePaths;

  /// Defines how TLS certificates are obtained.
  final TlsCertificateContextCertificateSource? certificateSource;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final SdsConfig? sdsConfig;

  /// Creates a new [TlsCertificateContext].
  /// [certificatePaths] Specifies the certificate and private key paths. This field is applicable only if tlsCertificateSource is set to USE_PATH.
  /// [certificateSource] Defines how TLS certificates are obtained.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  TlsCertificateContext({
    this.certificatePaths,
    this.certificateSource,
    this.sdsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatePathsValue = certificatePaths;
    if (certificatePathsValue != null) {
      map['certificatePaths'] = certificatePathsValue.toMap();
    }
    final certificateSourceValue = certificateSource;
    if (certificateSourceValue != null) {
      map['certificateSource'] = certificateSourceValue.value;
    }
    final sdsConfigValue = sdsConfig;
    if (sdsConfigValue != null) {
      map['sdsConfig'] = sdsConfigValue.toMap();
    }
    return map;
  }

  factory TlsCertificateContext.fromMap(Map<String, dynamic> map) {
    return TlsCertificateContext(
      certificatePaths: map['certificatePaths'] == null
          ? null
          : TlsCertificatePaths.fromMap(
              (map['certificatePaths'] as Map).cast<String, dynamic>()),
      certificateSource: map['certificateSource'] == null
          ? null
          : TlsCertificateContextCertificateSource.fromValue(
              map['certificateSource'] as String),
      sdsConfig: map['sdsConfig'] == null
          ? null
          : SdsConfig.fromMap(
              (map['sdsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
