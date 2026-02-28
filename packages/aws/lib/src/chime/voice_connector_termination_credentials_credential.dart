// ignore_for_file: unused_element, unnecessary_cast


class VoiceConnectorTerminationCredentialsCredential {
  /// RFC2617 compliant password associated with the SIP credentials.
  final String password;
  /// RFC2617 compliant username associated with the SIP credentials.
  final String username;

  /// Creates a new [VoiceConnectorTerminationCredentialsCredential].
  /// [password] RFC2617 compliant password associated with the SIP credentials.
  /// [username] RFC2617 compliant username associated with the SIP credentials.
  VoiceConnectorTerminationCredentialsCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory VoiceConnectorTerminationCredentialsCredential.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorTerminationCredentialsCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

