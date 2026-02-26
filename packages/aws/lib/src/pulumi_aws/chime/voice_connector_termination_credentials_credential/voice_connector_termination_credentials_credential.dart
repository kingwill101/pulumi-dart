// ignore_for_file: unused_element, unnecessary_cast

class VoiceConnectorTerminationCredentialsCredential {
  /// RFC2617 compliant password associated with the SIP credentials.
  final String password;

  /// RFC2617 compliant username associated with the SIP credentials.
  final String username;

  VoiceConnectorTerminationCredentialsCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory VoiceConnectorTerminationCredentialsCredential.fromMap(
      Map<String, dynamic> map) {
    return VoiceConnectorTerminationCredentialsCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
