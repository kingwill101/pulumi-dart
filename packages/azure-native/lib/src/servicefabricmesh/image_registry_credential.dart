// ignore_for_file: unused_element, unnecessary_cast


/// Image registry credential.
class ImageRegistryCredential {
  /// The password for the private registry. The password is required for create or update operations, however it is not returned in the get or list operations.
  final String? password;
  /// Docker image registry server, without protocol such as `http` and `https`.
  final String server;
  /// The username for the private registry.
  final String username;

  /// Creates a new [ImageRegistryCredential].
  /// [password] The password for the private registry. The password is required for create or update operations, however it is not returned in the get or list operations.
  /// [server] Docker image registry server, without protocol such as `http` and `https`.
  /// [username] The username for the private registry.
  ImageRegistryCredential({
    this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': server,
      'username': username,
    };
  }

  factory ImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredential(
      password: map['password'] == null ? null : map['password'] as String,
      server: map['server'] as String,
      username: map['username'] as String,
    );
  }
}

