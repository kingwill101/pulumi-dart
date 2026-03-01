// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_postgresql_profile_ssl_config_server_and_client_verification.dart';
import 'connection_profile_postgresql_profile_ssl_config_server_verification.dart';

class ConnectionProfilePostgresqlProfileSslConfig {
  /// If this field is set, the communication will be encrypted with TLS encryption
  /// and both the server identity and the client identity will be authenticated.
  /// Structure is documented below.
  final ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification? serverAndClientVerification;
  /// If this field is set, the communication will be encrypted with TLS encryption
  /// and the server identity will be authenticated.
  /// Structure is documented below.
  final ConnectionProfilePostgresqlProfileSslConfigServerVerification? serverVerification;

  /// Creates a new [ConnectionProfilePostgresqlProfileSslConfig].
  /// [serverAndClientVerification] If this field is set, the communication will be encrypted with TLS encryption
  /// [serverVerification] If this field is set, the communication will be encrypted with TLS encryption
  ConnectionProfilePostgresqlProfileSslConfig({
    this.serverAndClientVerification,
    this.serverVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAndClientVerification': ?serverAndClientVerification == null ? null : serverAndClientVerification!.toMap(),
      'serverVerification': ?serverVerification == null ? null : serverVerification!.toMap(),
    };
  }

  factory ConnectionProfilePostgresqlProfileSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfileSslConfig(
      serverAndClientVerification: map['serverAndClientVerification'] == null ? null : ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification.fromMap((map['serverAndClientVerification'] as Map).cast<String, dynamic>()),
      serverVerification: map['serverVerification'] == null ? null : ConnectionProfilePostgresqlProfileSslConfigServerVerification.fromMap((map['serverVerification'] as Map).cast<String, dynamic>()),
    );
  }
}

