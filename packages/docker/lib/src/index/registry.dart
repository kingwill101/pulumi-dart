// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Docker container registry
class Registry {
  /// The password to authenticate to the registry. Does not cause image rebuild when changed.
  final String? password;
  /// The URL of the Docker registry server
  final String? server;
  /// The username to authenticate to the registry. Does not cause image rebuild when changed.
  final String? username;

  /// Creates a new [Registry].
  /// [password] The password to authenticate to the registry. Does not cause image rebuild when changed.
  /// [server] The URL of the Docker registry server
  /// [username] The username to authenticate to the registry. Does not cause image rebuild when changed.
  Registry({
    this.password,
    this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': ?server,
      'username': ?username,
    };
  }

  factory Registry.fromMap(Map<String, dynamic> map) {
    return Registry(
      password: map['password'] == null ? null : map['password'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

