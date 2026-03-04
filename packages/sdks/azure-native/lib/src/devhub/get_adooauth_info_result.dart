// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getADOOAuthInfo.
class GetADOOAuthInfoResult {
  /// URL used to authorize ADO app using Entra ID
  final String? authURL;

  /// OAuth token used to make calls to ADO APIs
  final String? token;

  /// Creates a new [GetADOOAuthInfoResult].
  /// [authURL] URL used to authorize ADO app using Entra ID
  /// [token] OAuth token used to make calls to ADO APIs
  GetADOOAuthInfoResult({this.authURL, this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'authURL': ?authURL, 'token': ?token};
  }

  factory GetADOOAuthInfoResult.fromMap(Map<String, dynamic> map) {
    return GetADOOAuthInfoResult(
      authURL: (() {
        final guardedValue = map['authURL'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
