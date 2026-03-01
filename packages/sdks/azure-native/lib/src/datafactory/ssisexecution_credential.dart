// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string.dart';

/// SSIS package execution credential.
class SSISExecutionCredential {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// Password for windows authentication.
  final SecureString password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final dynamic userName;

  /// Creates a new [SSISExecutionCredential].
  /// [domain] Domain for windows authentication. Type: string (or Expression with resultType string).
  /// [password] Password for windows authentication.
  /// [userName] UseName for windows authentication. Type: string (or Expression with resultType string).
  SSISExecutionCredential({
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

  factory SSISExecutionCredential.fromMap(Map<String, dynamic> map) {
    return SSISExecutionCredential(
      domain: map['domain'],
      password: SecureString.fromMap((map['password'] as Map).cast<String, dynamic>()),
      userName: map['userName'],
    );
  }
}

