// ignore_for_file: unused_element, unnecessary_cast

import 'tls_context_response.dart';

/// The TLS settings for the server.
class ServerTlsSettingsResponse {
  /// Configures the mechanism to obtain security certificates and identity information.
  final TlsContextResponse proxyTlsContext;

  /// A list of alternate names to verify the subject identity in the certificate presented by the client.
  final List<String> subjectAltNames;

  /// Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final String tlsMode;

  ServerTlsSettingsResponse({
    required this.proxyTlsContext,
    required this.subjectAltNames,
    required this.tlsMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['proxyTlsContext'] = proxyTlsContext.toMap();
    map['subjectAltNames'] = subjectAltNames;
    map['tlsMode'] = tlsMode;
    return map;
  }

  factory ServerTlsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerTlsSettingsResponse(
      proxyTlsContext: TlsContextResponse.fromMap(
          (map['proxyTlsContext'] as Map).cast<String, dynamic>()),
      subjectAltNames: (map['subjectAltNames'] as List).cast<String>(),
      tlsMode: map['tlsMode'] as String,
    );
  }
}
