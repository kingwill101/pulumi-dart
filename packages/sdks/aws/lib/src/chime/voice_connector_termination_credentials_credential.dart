// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VoiceConnectorTerminationCredentialsCredential {
  /// RFC2617 compliant password associated with the SIP credentials.
  final pulumi.Input<String> password;

  /// RFC2617 compliant username associated with the SIP credentials.
  final pulumi.Input<String> username;

  /// Creates a new [VoiceConnectorTerminationCredentialsCredential].
  /// [password] RFC2617 compliant password associated with the SIP credentials.
  /// [username] RFC2617 compliant username associated with the SIP credentials.
  VoiceConnectorTerminationCredentialsCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory VoiceConnectorTerminationCredentialsCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return VoiceConnectorTerminationCredentialsCredential(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
