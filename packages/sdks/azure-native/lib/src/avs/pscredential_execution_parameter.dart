// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// a powershell credential object
class PSCredentialExecutionParameter {
  /// The parameter name
  final pulumi.Input<String> name;

  /// password for login
  final pulumi.Input<String>? password;

  /// script execution parameter type
  /// Expected value is 'Credential'.
  final pulumi.Input<String> type;

  /// username for login
  final pulumi.Input<String>? username;

  /// Creates a new [PSCredentialExecutionParameter].
  /// [name] The parameter name
  /// [password] password for login
  /// [type] script execution parameter type
  /// [username] username for login
  PSCredentialExecutionParameter({
    required this.name,
    this.password,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': ?password,
      'type': type,
      'username': ?username,
    };
  }

  factory PSCredentialExecutionParameter.fromMap(Map<String, dynamic> map) {
    return PSCredentialExecutionParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
