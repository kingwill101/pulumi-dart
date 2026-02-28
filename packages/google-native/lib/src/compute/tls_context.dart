// ignore_for_file: unused_element, unnecessary_cast

import 'tls_certificate_context.dart';
import 'tls_validation_context.dart';

/// [Deprecated] The TLS settings for the client or server. The TLS settings for the client or server.
class TlsContext {
  /// Defines the mechanism to obtain the client or server certificate.
  final TlsCertificateContext? certificateContext;

  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  final TlsValidationContext? validationContext;

  /// Creates a new [TlsContext].
  /// [certificateContext] Defines the mechanism to obtain the client or server certificate.
  /// [validationContext] Defines the mechanism to obtain the Certificate Authority certificate to validate the client/server certificate. If omitted, the proxy will not validate the server or client certificate.
  TlsContext({
    this.certificateContext,
    this.validationContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateContextValue = certificateContext;
    if (certificateContextValue != null) {
      map['certificateContext'] = certificateContextValue.toMap();
    }
    final validationContextValue = validationContext;
    if (validationContextValue != null) {
      map['validationContext'] = validationContextValue.toMap();
    }
    return map;
  }

  factory TlsContext.fromMap(Map<String, dynamic> map) {
    return TlsContext(
      certificateContext: map['certificateContext'] == null
          ? null
          : TlsCertificateContext.fromMap(
              (map['certificateContext'] as Map).cast<String, dynamic>()),
      validationContext: map['validationContext'] == null
          ? null
          : TlsValidationContext.fromMap(
              (map['validationContext'] as Map).cast<String, dynamic>()),
    );
  }
}
