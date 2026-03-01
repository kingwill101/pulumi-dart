// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiManagementServiceSsoToken.
class GetApiManagementServiceSsoTokenResult {
  /// Redirect URL to the Publisher Portal containing the SSO token.
  final String? redirectUri;

  /// Creates a new [GetApiManagementServiceSsoTokenResult].
  /// [redirectUri] Redirect URL to the Publisher Portal containing the SSO token.
  GetApiManagementServiceSsoTokenResult({
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUri': ?redirectUri,
    };
  }

  factory GetApiManagementServiceSsoTokenResult.fromMap(Map<String, dynamic> map) {
    return GetApiManagementServiceSsoTokenResult(
      redirectUri: map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}

