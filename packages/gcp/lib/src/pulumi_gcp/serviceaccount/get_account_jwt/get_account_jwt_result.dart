// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountJwt.
class GetAccountJwtResult {
  final List<String>? delegates;
  final int? expiresIn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The signed JWT containing the JWT Claims Set from the <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>.
  final String jwt;
  final String payload;
  final String targetServiceAccount;

  GetAccountJwtResult({
    this.delegates,
    this.expiresIn,
    required this.id,
    required this.jwt,
    required this.payload,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatesValue = delegates;
    if (delegatesValue != null) {
      map['delegates'] = delegatesValue;
    }
    final expiresInValue = expiresIn;
    if (expiresInValue != null) {
      map['expiresIn'] = expiresInValue;
    }
    map['id'] = id;
    map['jwt'] = jwt;
    map['payload'] = payload;
    map['targetServiceAccount'] = targetServiceAccount;
    return map;
  }

  factory GetAccountJwtResult.fromMap(Map<String, dynamic> map) {
    return GetAccountJwtResult(
      delegates: map['delegates'] == null
          ? null
          : (map['delegates'] as List).cast<String>(),
      expiresIn: map['expiresIn'] == null ? null : map['expiresIn'] as int,
      id: map['id'] as String,
      jwt: map['jwt'] as String,
      payload: map['payload'] as String,
      targetServiceAccount: map['targetServiceAccount'] as String,
    );
  }
}
