// ignore_for_file: unused_element, unnecessary_cast


class ApiOpenidAuthentication {
  /// How to send token to the server. A list of zero or more methods. Valid values are `authorizationHeader` and `query`.
  final List<String>? bearerTokenSendingMethods;
  /// OpenID Connect provider identifier. The name of an OpenID Connect Provider.
  final String openidProviderName;

  /// Creates a new [ApiOpenidAuthentication].
  /// [bearerTokenSendingMethods] How to send token to the server. A list of zero or more methods. Valid values are `authorizationHeader` and `query`.
  /// [openidProviderName] OpenID Connect provider identifier. The name of an OpenID Connect Provider.
  ApiOpenidAuthentication({
    this.bearerTokenSendingMethods,
    required this.openidProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'openidProviderName': openidProviderName,
    };
  }

  factory ApiOpenidAuthentication.fromMap(Map<String, dynamic> map) {
    return ApiOpenidAuthentication(
      bearerTokenSendingMethods: map['bearerTokenSendingMethods'] == null ? null : (map['bearerTokenSendingMethods'] as List).cast<String>(),
      openidProviderName: map['openidProviderName'] as String,
    );
  }
}

