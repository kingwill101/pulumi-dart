// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAuthorizationServerSecrets.
class ListAuthorizationServerSecretsResult {
  /// oAuth Authorization Server Secrets.
  final String? clientSecret;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  final String? resourceOwnerPassword;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  final String? resourceOwnerUsername;

  /// Creates a new [ListAuthorizationServerSecretsResult].
  /// [clientSecret] oAuth Authorization Server Secrets.
  /// [resourceOwnerPassword] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  /// [resourceOwnerUsername] Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  ListAuthorizationServerSecretsResult({
    this.clientSecret,
    this.resourceOwnerPassword,
    this.resourceOwnerUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
      'resourceOwnerPassword': ?resourceOwnerPassword,
      'resourceOwnerUsername': ?resourceOwnerUsername,
    };
  }

  factory ListAuthorizationServerSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListAuthorizationServerSecretsResult(
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      resourceOwnerPassword: map['resourceOwnerPassword'] == null ? null : map['resourceOwnerPassword'] as String,
      resourceOwnerUsername: map['resourceOwnerUsername'] == null ? null : map['resourceOwnerUsername'] as String,
    );
  }
}

