// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppAuthSettingsActiveDirectory {
  /// Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  final List<String>? allowedAudiences;
  /// The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  final String clientId;
  /// The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  final String? clientSecret;

  /// Creates a new [FunctionAppAuthSettingsActiveDirectory].
  /// [allowedAudiences] Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  /// [clientSecret] The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  FunctionAppAuthSettingsActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory FunctionAppAuthSettingsActiveDirectory.fromMap(Map<String, dynamic> map) {
    return FunctionAppAuthSettingsActiveDirectory(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
    );
  }
}

