// ignore_for_file: unused_element, unnecessary_cast

import 'username_password_credentials.dart';
import 'x509_credentials.dart';

/// Definition of the client authentication mechanism to the host.
class HostAuthentication {
  /// Defines the method to authenticate the user of the client at the server.
  final String method;
  /// Defines the username and password references when UsernamePassword user authentication mode is selected.
  final UsernamePasswordCredentials? usernamePasswordCredentials;
  /// Defines the certificate reference when Certificate user authentication mode is selected.
  final X509Credentials? x509Credentials;

  /// Creates a new [HostAuthentication].
  /// [method] Defines the method to authenticate the user of the client at the server.
  /// [usernamePasswordCredentials] Defines the username and password references when UsernamePassword user authentication mode is selected.
  /// [x509Credentials] Defines the certificate reference when Certificate user authentication mode is selected.
  HostAuthentication({
    required this.method,
    this.usernamePasswordCredentials,
    this.x509Credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'usernamePasswordCredentials': ?usernamePasswordCredentials == null ? null : usernamePasswordCredentials!.toMap(),
      'x509Credentials': ?x509Credentials == null ? null : x509Credentials!.toMap(),
    };
  }

  factory HostAuthentication.fromMap(Map<String, dynamic> map) {
    return HostAuthentication(
      method: map['method'] as String,
      usernamePasswordCredentials: map['usernamePasswordCredentials'] == null ? null : UsernamePasswordCredentials.fromMap((map['usernamePasswordCredentials'] as Map).cast<String, dynamic>()),
      x509Credentials: map['x509Credentials'] == null ? null : X509Credentials.fromMap((map['x509Credentials'] as Map).cast<String, dynamic>()),
    );
  }
}

