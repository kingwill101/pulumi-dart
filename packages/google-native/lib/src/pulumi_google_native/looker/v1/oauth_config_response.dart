// ignore_for_file: unused_element, unnecessary_cast

/// Looker instance OAuth login settings.
class OAuthConfigResponse {
  /// Input only. Client ID from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final String clientId;

  /// Input only. Client secret from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final String clientSecret;

  OAuthConfigResponse({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    return map;
  }

  factory OAuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return OAuthConfigResponse(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}
