// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'username_password_credentials_response.dart';
import 'x509_credentials_response.dart';

/// Definition of the client authentication mechanism to the server.
class AuthenticationResponse {
  /// Defines the method to authenticate the user of the client at the server.
  final pulumi.Input<String> method;
  /// Defines the username and password references when UsernamePassword user authentication mode is selected.
  final pulumi.Input<UsernamePasswordCredentialsResponse>? usernamePasswordCredentials;
  /// Defines the certificate reference when Certificate user authentication mode is selected.
  final pulumi.Input<X509CredentialsResponse>? x509Credentials;

  /// Creates a new [AuthenticationResponse].
  /// [method] Defines the method to authenticate the user of the client at the server.
  /// [usernamePasswordCredentials] Defines the username and password references when UsernamePassword user authentication mode is selected.
  /// [x509Credentials] Defines the certificate reference when Certificate user authentication mode is selected.
  const AuthenticationResponse({
    required this.method,
    this.usernamePasswordCredentials,
    this.x509Credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'usernamePasswordCredentials': ?pulumi.Input.mapOptionalInputValue<UsernamePasswordCredentialsResponse, Map<String, dynamic>>(usernamePasswordCredentials, (value) => value.toMap()),
      'x509Credentials': ?pulumi.Input.mapOptionalInputValue<X509CredentialsResponse, Map<String, dynamic>>(x509Credentials, (value) => value.toMap()),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      usernamePasswordCredentials: (() { final guardedValue = map['usernamePasswordCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsernamePasswordCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509Credentials: (() { final guardedValue = map['x509Credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(X509CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

