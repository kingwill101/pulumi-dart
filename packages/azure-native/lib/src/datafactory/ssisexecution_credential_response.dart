// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string_response.dart';

/// SSIS package execution credential.
class SSISExecutionCredentialResponse {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// Password for windows authentication.
  final SecureStringResponse password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final dynamic userName;

  /// Creates a new [SSISExecutionCredentialResponse].
  /// [domain] Domain for windows authentication. Type: string (or Expression with resultType string).
  /// [password] Password for windows authentication.
  /// [userName] UseName for windows authentication. Type: string (or Expression with resultType string).
  SSISExecutionCredentialResponse({
    required this.domain,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'password': password.toMap(),
      'userName': userName,
    };
  }

  factory SSISExecutionCredentialResponse.fromMap(Map<String, dynamic> map) {
    return SSISExecutionCredentialResponse(
      domain: map['domain'],
      password: SecureStringResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      userName: map['userName'],
    );
  }
}

