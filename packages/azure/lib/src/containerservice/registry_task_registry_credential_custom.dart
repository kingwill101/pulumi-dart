// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskRegistryCredentialCustom {
  /// The managed identity assigned to this custom credential. For user assigned identity, the value is the client ID of the identity. For system assigned identity, the value is `[system]`.
  final String? identity;
  /// The login server of the custom Container Registry.
  final String loginServer;
  /// The password for logging into the custom Container Registry. It can be either a plain text of password, or a Keyvault Secret ID.
  final String? password;
  /// The username for logging into the custom Container Registry. It can be either a plain text of username, or a Keyvault Secret ID.
  final String? username;

  /// Creates a new [RegistryTaskRegistryCredentialCustom].
  /// [identity] The managed identity assigned to this custom credential. For user assigned identity, the value is the client ID of the identity. For system assigned identity, the value is `[system]`.
  /// [loginServer] The login server of the custom Container Registry.
  /// [password] The password for logging into the custom Container Registry. It can be either a plain text of password, or a Keyvault Secret ID.
  /// [username] The username for logging into the custom Container Registry. It can be either a plain text of username, or a Keyvault Secret ID.
  RegistryTaskRegistryCredentialCustom({
    this.identity,
    required this.loginServer,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'loginServer': loginServer,
      'password': ?password,
      'username': ?username,
    };
  }

  factory RegistryTaskRegistryCredentialCustom.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredentialCustom(
      identity: map['identity'] == null ? null : map['identity'] as String,
      loginServer: map['loginServer'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

