// ignore_for_file: unused_element, unnecessary_cast

/// The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.
class GoogleCloudIntegrationsV1alphaAuthToken {
  /// The token for the auth type.
  final String? token;

  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final String? type;

  GoogleCloudIntegrationsV1alphaAuthToken({
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

  factory GoogleCloudIntegrationsV1alphaAuthToken.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAuthToken(
      token: map['token'] == null ? null : map['token'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
