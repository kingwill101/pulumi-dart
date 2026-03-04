// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string.dart';

/// SSIS package execution credential.
class SSISExecutionCredential {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> domain;

  /// Password for windows authentication.
  final pulumi.Input<SecureString> password;

  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;

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
      'password':
          pulumi.Input.mapInputValue<SecureString, Map<String, dynamic>>(
            password,
            (value) => value.toMap(),
          ),
      'userName': userName,
    };
  }

  factory SSISExecutionCredential.fromMap(Map<String, dynamic> map) {
    return SSISExecutionCredential(
      domain: pulumi.Input.fromValue(map['domain']),
      password: pulumi.Input.fromValue(
        SecureString.fromMap((map['password']! as Map).cast<String, dynamic>()),
      ),
      userName: pulumi.Input.fromValue(map['userName']),
    );
  }
}
