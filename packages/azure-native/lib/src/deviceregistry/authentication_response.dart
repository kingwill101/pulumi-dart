// ignore_for_file: unused_element, unnecessary_cast

import 'username_password_credentials_response.dart';
import 'x509_credentials_response.dart';

/// Definition of the client authentication mechanism to the server.
class AuthenticationResponse {
  /// Defines the method to authenticate the user of the client at the server.
  final String method;
  /// Defines the username and password references when UsernamePassword user authentication mode is selected.
  final UsernamePasswordCredentialsResponse? usernamePasswordCredentials;
  /// Defines the certificate reference when Certificate user authentication mode is selected.
  final X509CredentialsResponse? x509Credentials;

  /// Creates a new [AuthenticationResponse].
  /// [method] Defines the method to authenticate the user of the client at the server.
  /// [usernamePasswordCredentials] Defines the username and password references when UsernamePassword user authentication mode is selected.
  /// [x509Credentials] Defines the certificate reference when Certificate user authentication mode is selected.
  AuthenticationResponse({
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

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      method: map['method'] as String,
      usernamePasswordCredentials: map['usernamePasswordCredentials'] == null ? null : UsernamePasswordCredentialsResponse.fromMap((map['usernamePasswordCredentials'] as Map).cast<String, dynamic>()),
      x509Credentials: map['x509Credentials'] == null ? null : X509CredentialsResponse.fromMap((map['x509Credentials'] as Map).cast<String, dynamic>()),
    );
  }
}

