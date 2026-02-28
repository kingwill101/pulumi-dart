// ignore_for_file: unused_element, unnecessary_cast

/// The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.
class GoogleCloudIntegrationsV1alphaAuthTokenResponse {
  /// The token for the auth type.
  final String token;

  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final String type;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAuthTokenResponse].
  /// [token] The token for the auth type.
  /// [type] Authentication type, e.g. "Basic", "Bearer", etc.
  GoogleCloudIntegrationsV1alphaAuthTokenResponse({
    required this.token,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaAuthTokenResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAuthTokenResponse(
      token: map['token'] as String,
      type: map['type'] as String,
    );
  }
}
