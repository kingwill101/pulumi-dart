// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCredentials.
class GetCredentialsResult {
  final String authorizationToken;
  final String expiresAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String password;
  final String proxyEndpoint;
  final String registryId;
  final String userName;

  /// Creates a new [GetCredentialsResult].
  /// [authorizationToken] Required.
  /// [expiresAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Required.
  /// [proxyEndpoint] Required.
  /// [registryId] Required.
  /// [userName] Required.
  const GetCredentialsResult({
    required this.authorizationToken,
    required this.expiresAt,
    required this.id,
    required this.password,
    required this.proxyEndpoint,
    required this.registryId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': authorizationToken,
      'expiresAt': expiresAt,
      'id': id,
      'password': password,
      'proxyEndpoint': proxyEndpoint,
      'registryId': registryId,
      'userName': userName,
    };
  }

  factory GetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialsResult(
      authorizationToken: map['authorizationToken'] as String,
      expiresAt: map['expiresAt'] as String,
      id: map['id'] as String,
      password: map['password'] as String,
      proxyEndpoint: map['proxyEndpoint'] as String,
      registryId: map['registryId'] as String,
      userName: map['userName'] as String,
    );
  }
}
