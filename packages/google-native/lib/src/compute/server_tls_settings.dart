// ignore_for_file: unused_element, unnecessary_cast

import 'server_tls_settings_tls_mode.dart';
import 'tls_context.dart';

/// The TLS settings for the server.
class ServerTlsSettings {
  /// Configures the mechanism to obtain security certificates and identity information.
  final TlsContext? proxyTlsContext;
  /// A list of alternate names to verify the subject identity in the certificate presented by the client.
  final List<String>? subjectAltNames;
  /// Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  final ServerTlsSettingsTlsMode? tlsMode;

  /// Creates a new [ServerTlsSettings].
  /// [proxyTlsContext] Configures the mechanism to obtain security certificates and identity information.
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate presented by the client.
  /// [tlsMode] Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
  ServerTlsSettings({
    this.proxyTlsContext,
    this.subjectAltNames,
    this.tlsMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyTlsContext': ?proxyTlsContext == null ? null : proxyTlsContext!.toMap(),
      'subjectAltNames': ?subjectAltNames,
      'tlsMode': ?tlsMode == null ? null : tlsMode!.value,
    };
  }

  factory ServerTlsSettings.fromMap(Map<String, dynamic> map) {
    return ServerTlsSettings(
      proxyTlsContext: map['proxyTlsContext'] == null ? null : TlsContext.fromMap((map['proxyTlsContext'] as Map).cast<String, dynamic>()),
      subjectAltNames: map['subjectAltNames'] == null ? null : (map['subjectAltNames'] as List).cast<String>(),
      tlsMode: map['tlsMode'] == null ? null : ServerTlsSettingsTlsMode.fromValue(map['tlsMode'] as String),
    );
  }
}

