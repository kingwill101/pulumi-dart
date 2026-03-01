// ignore_for_file: unused_element, unnecessary_cast


class AppRegistry {
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  ///
  /// > **Note:** The Resource ID must be of a User Assigned Managed identity defined in an `identity` block.
  final String? identity;
  /// The name of the Secret Reference containing the password value for this user on the Container Registry, `username` must also be supplied.
  final String? passwordSecretName;
  /// The hostname for the Container Registry.
  ///
  /// The authentication details must also be supplied, `identity` and `username`/`password_secret_name` are mutually exclusive.
  final String server;
  /// The username to use for this Container Registry, `password_secret_name` must also be supplied..
  final String? username;

  /// Creates a new [AppRegistry].
  /// [identity] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [passwordSecretName] The name of the Secret Reference containing the password value for this user on the Container Registry, `username` must also be supplied.
  /// [server] The hostname for the Container Registry.
  /// [username] The username to use for this Container Registry, `password_secret_name` must also be supplied..
  AppRegistry({
    this.identity,
    this.passwordSecretName,
    required this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'passwordSecretName': ?passwordSecretName,
      'server': server,
      'username': ?username,
    };
  }

  factory AppRegistry.fromMap(Map<String, dynamic> map) {
    return AppRegistry(
      identity: map['identity'] == null ? null : map['identity'] as String,
      passwordSecretName: map['passwordSecretName'] == null ? null : map['passwordSecretName'] as String,
      server: map['server'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

