// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials for a user on a lab VM.
class Credentials {
  /// The password for the user. This is required for the TemplateVM createOption.
  final pulumi.Input<String>? password;
  /// The username to use when signing in to lab VMs.
  final pulumi.Input<String> username;

  /// Creates a new [Credentials].
  /// [password] The password for the user. This is required for the TemplateVM createOption.
  /// [username] The username to use when signing in to lab VMs.
  const Credentials({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': username,
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

