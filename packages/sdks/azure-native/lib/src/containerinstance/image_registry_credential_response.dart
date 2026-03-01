// ignore_for_file: unused_element, unnecessary_cast


/// Image registry credential.
class ImageRegistryCredentialResponse {
  /// The identity for the private registry.
  final String? identity;
  /// The identity URL for the private registry.
  final String? identityUrl;
  /// The password for the private registry.
  final String? password;
  /// The reference for the private registry password.
  final String? passwordReference;
  /// The Docker image registry server without a protocol such as "http" and "https".
  final String server;
  /// The username for the private registry.
  final String? username;

  /// Creates a new [ImageRegistryCredentialResponse].
  /// [identity] The identity for the private registry.
  /// [identityUrl] The identity URL for the private registry.
  /// [password] The password for the private registry.
  /// [passwordReference] The reference for the private registry password.
  /// [server] The Docker image registry server without a protocol such as "http" and "https".
  /// [username] The username for the private registry.
  ImageRegistryCredentialResponse({
    this.identity,
    this.identityUrl,
    this.password,
    this.passwordReference,
    required this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'identityUrl': ?identityUrl,
      'password': ?password,
      'passwordReference': ?passwordReference,
      'server': server,
      'username': ?username,
    };
  }

  factory ImageRegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredentialResponse(
      identity: map['identity'] == null ? null : map['identity'] as String,
      identityUrl: map['identityUrl'] == null ? null : map['identityUrl'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      passwordReference: map['passwordReference'] == null ? null : map['passwordReference'] as String,
      server: map['server'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

