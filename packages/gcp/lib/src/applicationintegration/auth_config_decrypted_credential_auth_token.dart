// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialAuthToken {
  /// The token for the auth type.
  final String? token;

  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final String? type;

  /// Creates a new [AuthConfigDecryptedCredentialAuthToken].
  /// [token] The token for the auth type.
  /// [type] Authentication type, e.g. "Basic", "Bearer", etc.
  AuthConfigDecryptedCredentialAuthToken({
    this.token,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialAuthToken.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialAuthToken(
      token: map['token'] == null ? null : map['token'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
