// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAuthorizationToken.
class GetAuthorizationTokenEcrResult {
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

  GetAuthorizationTokenEcrResult({
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
    final map = <String, dynamic>{};
    map['authorizationToken'] = authorizationToken;
    map['expiresAt'] = expiresAt;
    map['id'] = id;
    map['password'] = password;
    map['proxyEndpoint'] = proxyEndpoint;
    map['region'] = region;
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory GetAuthorizationTokenEcrResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenEcrResult(
      authorizationToken: map['authorizationToken'] as String,
      expiresAt: map['expiresAt'] as String,
      id: map['id'] as String,
      password: map['password'] as String,
      proxyEndpoint: map['proxyEndpoint'] as String,
      region: map['region'] as String,
      registryId:
          map['registryId'] == null ? null : map['registryId'] as String,
      userName: map['userName'] as String,
    );
  }
}
