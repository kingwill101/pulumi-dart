// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountAccessToken.
class GetAccountAccessTokenResult {
  /// The <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> representing the new generated identity.
  final String accessToken;
  final List<String>? delegates;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? lifetime;
  final List<String> scopes;
  final String targetServiceAccount;

  GetAccountAccessTokenResult({
    required this.accessToken,
    this.delegates,
    required this.id,
    this.lifetime,
    required this.scopes,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessToken'] = accessToken;
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    map['id'] = id;
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    map['scopes'] = scopes;
    map['targetServiceAccount'] = targetServiceAccount;
    return map;
  }

  factory GetAccountAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAccessTokenResult(
      accessToken: map['accessToken'] as String,
      delegates: map['delegates'] == null
          ? null
          : (map['delegates'] as List).cast<String>(),
      id: map['id'] as String,
      lifetime: map['lifetime'] == null ? null : map['lifetime'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      targetServiceAccount: map['targetServiceAccount'] as String,
    );
  }
}
