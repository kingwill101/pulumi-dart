// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationToken.
class GetAuthorizationTokenResult {
  /// Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of `user_name:password`.
  final String? authorizationToken;
  /// Time in UTC RFC3339 format when the authorization token expires.
  final String? expiresAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Password decoded from the authorization token.
  final String? password;
  /// Registry URL to use in the docker login command.
  final String? proxyEndpoint;
  final String? region;
  final String? registryId;
  /// User name decoded from the authorization token.
  final String? userName;

  /// Creates a new [GetAuthorizationTokenResult].
  /// [authorizationToken] Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of `user_name:password`.
  /// [expiresAt] Time in UTC RFC3339 format when the authorization token expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Password decoded from the authorization token.
  /// [proxyEndpoint] Registry URL to use in the docker login command.
  /// [region] Optional.
  /// [registryId] Optional.
  /// [userName] User name decoded from the authorization token.
  const GetAuthorizationTokenResult({
    this.authorizationToken,
    this.expiresAt,
    this.id,
    this.password,
    this.proxyEndpoint,
    this.region,
    this.registryId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': ?authorizationToken,
      'expiresAt': ?expiresAt,
      'id': ?id,
      'password': ?password,
      'proxyEndpoint': ?proxyEndpoint,
      'region': ?region,
      'registryId': ?registryId,
      'userName': ?userName,
    };
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: (() { final guardedValue = map['authorizationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyEndpoint: (() { final guardedValue = map['proxyEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
