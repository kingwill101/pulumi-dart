// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials for a user on a lab VM.
class CredentialsResponse {
  /// The username to use when signing in to lab VMs.
  final pulumi.Input<String> username;

  /// Creates a new [CredentialsResponse].
  /// [username] The username to use when signing in to lab VMs.
  CredentialsResponse({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory CredentialsResponse.fromMap(Map<String, dynamic> map) {
    return CredentialsResponse(
      username: (map['username'] as String).input(),
    );
  }
}

