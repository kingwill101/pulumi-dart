// ignore_for_file: unused_element, unnecessary_cast

import 'sds_config_response.dart';

/// [Deprecated] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. validate the client/server certificate.
class TlsValidationContextResponse {
  /// The path to the file holding the CA certificate to validate the client or server certificate.
  final String certificatePath;

  /// Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  final SdsConfigResponse sdsConfig;

  /// Defines how TLS certificates are obtained.
  final String validationSource;

  /// Creates a new [TlsValidationContextResponse].
  /// [certificatePath] The path to the file holding the CA certificate to validate the client or server certificate.
  /// [sdsConfig] Specifies the config to retrieve certificates through SDS. This field is applicable only if tlsCertificateSource is set to USE_SDS.
  /// [validationSource] Defines how TLS certificates are obtained.
  TlsValidationContextResponse({
    required this.certificatePath,
    required this.sdsConfig,
    required this.validationSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePath': certificatePath,
      'sdsConfig': sdsConfig.toMap(),
      'validationSource': validationSource,
    };
  }

  factory TlsValidationContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsValidationContextResponse(
      certificatePath: map['certificatePath'] as String,
      sdsConfig: SdsConfigResponse.fromMap(
        (map['sdsConfig'] as Map).cast<String, dynamic>(),
      ),
      validationSource: map['validationSource'] as String,
    );
  }
}
