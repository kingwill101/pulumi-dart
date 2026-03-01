// ignore_for_file: unused_element, unnecessary_cast

class AppAuthorizationCredentialOauth2Credential {
  /// The client ID of the client application.
  final String clientId;

  /// The client secret of the client application.
  final String clientSecret;

  /// Creates a new [AppAuthorizationCredentialOauth2Credential].
  /// [clientId] The client ID of the client application.
  /// [clientSecret] The client secret of the client application.
  AppAuthorizationCredentialOauth2Credential({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory AppAuthorizationCredentialOauth2Credential.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppAuthorizationCredentialOauth2Credential(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}
