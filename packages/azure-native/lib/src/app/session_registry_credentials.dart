// ignore_for_file: unused_element, unnecessary_cast


/// Session pool private registry credentials.
class SessionRegistryCredentials {
  /// A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  final String? identity;
  /// The name of the secret that contains the registry login password
  final String? passwordSecretRef;
  /// Container registry server.
  final String? server;
  /// Container registry username.
  final String? username;

  /// Creates a new [SessionRegistryCredentials].
  /// [identity] A Managed Identity to use to authenticate with Azure Container Registry. For user-assigned identities, use the full user-assigned identity Resource ID. For system-assigned identities, use 'system'
  /// [passwordSecretRef] The name of the secret that contains the registry login password
  /// [server] Container registry server.
  /// [username] Container registry username.
  SessionRegistryCredentials({
    this.identity,
    this.passwordSecretRef,
    this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'passwordSecretRef': ?passwordSecretRef,
      'server': ?server,
      'username': ?username,
    };
  }

  factory SessionRegistryCredentials.fromMap(Map<String, dynamic> map) {
    return SessionRegistryCredentials(
      identity: map['identity'] == null ? null : map['identity'] as String,
      passwordSecretRef: map['passwordSecretRef'] == null ? null : map['passwordSecretRef'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

