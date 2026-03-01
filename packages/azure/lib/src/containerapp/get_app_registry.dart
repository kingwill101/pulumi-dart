// ignore_for_file: unused_element, unnecessary_cast


class GetAppRegistry {
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  final String identity;
  /// The name of the Secret Reference containing the password value for the user on the Container Registry.
  final String passwordSecretName;
  /// The hostname for the Container Registry.
  final String server;
  /// The username used for this Container Registry.
  final String username;

  /// Creates a new [GetAppRegistry].
  /// [identity] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [passwordSecretName] The name of the Secret Reference containing the password value for the user on the Container Registry.
  /// [server] The hostname for the Container Registry.
  /// [username] The username used for this Container Registry.
  GetAppRegistry({
    required this.identity,
    required this.passwordSecretName,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'passwordSecretName': passwordSecretName,
      'server': server,
      'username': username,
    };
  }

  factory GetAppRegistry.fromMap(Map<String, dynamic> map) {
    return GetAppRegistry(
      identity: map['identity'] as String,
      passwordSecretName: map['passwordSecretName'] as String,
      server: map['server'] as String,
      username: map['username'] as String,
    );
  }
}

