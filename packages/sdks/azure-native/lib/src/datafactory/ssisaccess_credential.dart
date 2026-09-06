// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSIS access credential.
class SSISAccessCredential {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> domain;
  /// Password for windows authentication.
  final pulumi.Input<dynamic> password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;

  /// Creates a new [SSISAccessCredential].
  /// [domain] Domain for windows authentication. Type: string (or Expression with resultType string).
  /// [password] Password for windows authentication.
  /// [userName] UseName for windows authentication. Type: string (or Expression with resultType string).
  const SSISAccessCredential({
    required this.domain,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'password': password,
      'userName': userName,
    };
  }

  factory SSISAccessCredential.fromMap(Map<String, dynamic> map) {
    return SSISAccessCredential(
      domain: pulumi.Input.fromValue(map['domain']),
      password: pulumi.Input.fromValue(map['password']),
      userName: pulumi.Input.fromValue(map['userName']),
    );
  }
}
