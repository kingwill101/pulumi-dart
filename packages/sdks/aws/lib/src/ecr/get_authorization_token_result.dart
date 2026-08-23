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
  /// Registry URL to use in the docker login command.
  final String proxyEndpoint;
  final String region;
  final String? registryId;
  /// User name decoded from the authorization token.
  final String userName;

  /// Creates a new [GetAuthorizationTokenResult].
  /// [authorizationToken] Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of `user_name:password`.
  /// [expiresAt] Time in UTC RFC3339 format when the authorization token expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Password decoded from the authorization token.
  /// [proxyEndpoint] Registry URL to use in the docker login command.
  /// [region] Required.
  /// [registryId] Optional.
  /// [userName] User name decoded from the authorization token.
  const GetAuthorizationTokenResult({
    required this.authorizationToken,
    required this.expiresAt,
    required this.id,
    required this.password,
    required this.proxyEndpoint,
    required this.region,
    this.registryId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': authorizationToken,
      'expiresAt': expiresAt,
      'id': id,
      'password': password,
      'proxyEndpoint': proxyEndpoint,
      'region': region,
      'registryId': ?registryId,
      'userName': userName,
    };
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: map['authorizationToken'] as String,
      expiresAt: map['expiresAt'] as String,
      id: map['id'] as String,
      password: map['password'] as String,
      proxyEndpoint: map['proxyEndpoint'] as String,
      region: map['region'] as String,
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: map['userName'] as String,
    );
  }
}
