// ignore_for_file: unused_element, unnecessary_cast

class AppAuthorizationCredentialApiKeyCredential {
  /// Contains API key credential information.
  final String apiKey;

  /// Creates a new [AppAuthorizationCredentialApiKeyCredential].
  /// [apiKey] Contains API key credential information.
  AppAuthorizationCredentialApiKeyCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    return map;
  }

  factory AppAuthorizationCredentialApiKeyCredential.fromMap(
      Map<String, dynamic> map) {
    return AppAuthorizationCredentialApiKeyCredential(
      apiKey: map['apiKey'] as String,
    );
  }
}
