// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountIdToken.
class GetAccountIdTokenResult {
  final List<String>? delegates;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The <span pulumi-lang-nodejs="`idToken`" pulumi-lang-dotnet="`IdToken`" pulumi-lang-go="`idToken`" pulumi-lang-python="`id_token`" pulumi-lang-yaml="`idToken`" pulumi-lang-java="`idToken`">`id_token`</span> representing the new generated identity.
  final String idToken;
  final bool? includeEmail;
  final String targetAudience;
  final String? targetServiceAccount;

  GetAccountIdTokenResult({
    this.delegates,
    required this.id,
    required this.idToken,
    this.includeEmail,
    required this.targetAudience,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    map['id'] = id;
    map['idToken'] = idToken;
    final includeEmailValue = includeEmail;
    if (includeEmailValue != null) {
      map['includeEmail'] = includeEmailValue;
    }
    map['targetAudience'] = targetAudience;
    final targetServiceAccountValue = targetServiceAccount;
    if (targetServiceAccountValue != null) {
      map['targetServiceAccount'] = targetServiceAccountValue;
    }
    return map;
  }

  factory GetAccountIdTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAccountIdTokenResult(
      delegates: map['delegates'] == null
          ? null
          : (map['delegates'] as List).cast<String>(),
      id: map['id'] as String,
      idToken: map['idToken'] as String,
      includeEmail:
          map['includeEmail'] == null ? null : map['includeEmail'] as bool,
      targetAudience: map['targetAudience'] as String,
      targetServiceAccount: map['targetServiceAccount'] == null
          ? null
          : map['targetServiceAccount'] as String,
    );
  }
}
