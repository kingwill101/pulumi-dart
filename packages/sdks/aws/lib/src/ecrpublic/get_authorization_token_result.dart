// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationToken.
class GetAuthorizationTokenResult {
  /// Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of `user_name:password`.
  final String authorizationToken;
  /// Time in UTC RFC3339 format when the authorization token expires.
  final String expiresAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Password decoded from the authorization token.
  final String password;
  final String region;
  /// User name decoded from the authorization token.
  final String userName;

  /// Creates a new [GetAuthorizationTokenResult].
  /// [authorizationToken] Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of `user_name:password`.
  /// [expiresAt] Time in UTC RFC3339 format when the authorization token expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Password decoded from the authorization token.
  /// [region] Required.
  /// [userName] User name decoded from the authorization token.
  GetAuthorizationTokenResult({
    required this.authorizationToken,
    required this.expiresAt,
    required this.id,
    required this.password,
    required this.region,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': authorizationToken,
      'expiresAt': expiresAt,
      'id': id,
      'password': password,
      'region': region,
      'userName': userName,
    };
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: map['authorizationToken'] as String,
      expiresAt: map['expiresAt'] as String,
      id: map['id'] as String,
      password: map['password'] as String,
      region: map['region'] as String,
      userName: map['userName'] as String,
    );
  }
}

