// ignore_for_file: unused_element, unnecessary_cast

import 'sds_config.dart';
import 'tls_validation_context_validation_source.dart';

/// [Deprecated] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. validate the client/server certificate.
class TlsValidationContext {
  /// The path to the file holding the CA certificate to validate the client or server certificate.
  final String? certificatePath;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final SdsConfig? sdsConfig;

  /// Defines how TLS certificates are obtained.
  final TlsValidationContextValidationSource? validationSource;

  /// Creates a new [TlsValidationContext].
  /// [certificatePath] The path to the file holding the CA certificate to validate the client or server certificate.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  /// [validationSource] Defines how TLS certificates are obtained.
  TlsValidationContext({
    this.certificatePath,
    this.sdsConfig,
    this.validationSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePath': ?certificatePath,
      'sdsConfig': ?sdsConfig == null ? null : sdsConfig!.toMap(),
      'validationSource': ?validationSource == null
          ? null
          : validationSource!.value,
    };
  }

  factory TlsValidationContext.fromMap(Map<String, dynamic> map) {
    return TlsValidationContext(
      certificatePath: map['certificatePath'] == null
          ? null
          : map['certificatePath'] as String,
      sdsConfig: map['sdsConfig'] == null
          ? null
          : SdsConfig.fromMap(
              (map['sdsConfig'] as Map).cast<String, dynamic>(),
            ),
      validationSource: map['validationSource'] == null
          ? null
          : TlsValidationContextValidationSource.fromValue(
              map['validationSource'] as String,
            ),
    );
  }
}
