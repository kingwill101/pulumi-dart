// ignore_for_file: unused_element, unnecessary_cast


class GetClusterGateway {
  /// Is the Ambari Portal enabled?
  final bool enabled;
  /// The password used for the Ambari Portal.
  final String password;
  /// The username used for the Ambari Portal.
  final String username;

  /// Creates a new [GetClusterGateway].
  /// [enabled] Is the Ambari Portal enabled?
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal.
  GetClusterGateway({
    required this.enabled,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'password': password,
      'username': username,
    };
  }

  factory GetClusterGateway.fromMap(Map<String, dynamic> map) {
    return GetClusterGateway(
      enabled: map['enabled'] as bool,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

