// ignore_for_file: unused_element, unnecessary_cast


class JobRegistry {
  /// A Managed Identity to use to authenticate with Azure Container Registry.
  final String? identity;
  /// The name of the Secret that contains the registry login password.
  final String? passwordSecretName;
  /// The URL of the Azure Container Registry server.
  final String server;
  /// The username to use to authenticate with Azure Container Registry.
  final String? username;

  /// Creates a new [JobRegistry].
  /// [identity] A Managed Identity to use to authenticate with Azure Container Registry.
  /// [passwordSecretName] The name of the Secret that contains the registry login password.
  /// [server] The URL of the Azure Container Registry server.
  /// [username] The username to use to authenticate with Azure Container Registry.
  JobRegistry({
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

  factory JobRegistry.fromMap(Map<String, dynamic> map) {
    return JobRegistry(
      identity: map['identity'] == null ? null : map['identity'] as String,
      passwordSecretName: map['passwordSecretName'] == null ? null : map['passwordSecretName'] as String,
      server: map['server'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

