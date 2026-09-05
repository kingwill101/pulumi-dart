// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCredentials.
class GetCredentialsResult {
  final String? authorizationToken;
  final String? expiresAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? password;
  final String? proxyEndpoint;
  final String? registryId;
  final String? userName;

  /// Creates a new [GetCredentialsResult].
  /// [authorizationToken] Optional.
  /// [expiresAt] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Optional.
  /// [proxyEndpoint] Optional.
  /// [registryId] Optional.
  /// [userName] Optional.
  const GetCredentialsResult({
    this.authorizationToken,
    this.expiresAt,
    this.id,
    this.password,
    this.proxyEndpoint,
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
      'registryId': ?registryId,
      'userName': ?userName,
    };
  }

  factory GetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialsResult(
      authorizationToken: (() { final guardedValue = map['authorizationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyEndpoint: (() { final guardedValue = map['proxyEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
