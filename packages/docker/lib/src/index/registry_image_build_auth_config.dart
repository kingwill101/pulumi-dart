// ignore_for_file: unused_element, unnecessary_cast


class RegistryImageBuildAuthConfig {
  /// the auth token
  final String? auth;
  /// the user emal
  final String? email;
  /// hostname of the registry
  final String hostName;
  /// the identity token
  final String? identityToken;
  /// the registry password
  final String? password;
  /// the registry token
  final String? registryToken;
  /// the server address
  final String? serverAddress;
  /// the registry user name
  final String? userName;

  /// Creates a new [RegistryImageBuildAuthConfig].
  /// [auth] the auth token
  /// [email] the user emal
  /// [hostName] hostname of the registry
  /// [identityToken] the identity token
  /// [password] the registry password
  /// [registryToken] the registry token
  /// [serverAddress] the server address
  /// [userName] the registry user name
  RegistryImageBuildAuthConfig({
    this.auth,
    this.email,
    required this.hostName,
    this.identityToken,
    this.password,
    this.registryToken,
    this.serverAddress,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth,
      'email': ?email,
      'hostName': hostName,
      'identityToken': ?identityToken,
      'password': ?password,
      'registryToken': ?registryToken,
      'serverAddress': ?serverAddress,
      'userName': ?userName,
    };
  }

  factory RegistryImageBuildAuthConfig.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuildAuthConfig(
      auth: map['auth'] == null ? null : map['auth'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      hostName: map['hostName'] as String,
      identityToken: map['identityToken'] == null ? null : map['identityToken'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      registryToken: map['registryToken'] == null ? null : map['registryToken'] as String,
      serverAddress: map['serverAddress'] == null ? null : map['serverAddress'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

