// ignore_for_file: unused_element, unnecessary_cast

import 'tls_certificate_context_response.dart';
import 'tls_validation_context_response.dart';

/// [Deprecated] The TLS settings for the client or server. The TLS settings for the client or server.
class TlsContextResponse {
  /// Defines the mechanism to obtain the client or server certificate.
  final TlsCertificateContextResponse certificateContext;

  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  final TlsValidationContextResponse validationContext;

  TlsContextResponse({
    required this.certificateContext,
    required this.validationContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateContext'] = certificateContext.toMap();
    map['validationContext'] = validationContext.toMap();
    return map;
  }

  factory TlsContextResponse.fromMap(Map<String, dynamic> map) {
    return TlsContextResponse(
      certificateContext: TlsCertificateContextResponse.fromMap(
          (map['certificateContext'] as Map).cast<String, dynamic>()),
      validationContext: TlsValidationContextResponse.fromMap(
          (map['validationContext'] as Map).cast<String, dynamic>()),
    );
  }
}
