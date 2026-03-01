// ignore_for_file: unused_element, unnecessary_cast

class BrokerUser {
  /// Whether to enable access to the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) for the user. Applies to `engine_type` of `ActiveMQ` only.
  final bool? consoleAccess;

  /// List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to `engine_type` of `ActiveMQ` only.
  final List<String>? groups;

  /// Password of the user. Must be 12 to 250 characters long, contain at least 4 unique characters, and must not contain commas.
  final String password;

  /// Whether to set replication user. Defaults to `false`.
  final bool? replicationUser;

  /// Username of the user.
  ///
  /// The following arguments are optional:
  final String username;

  /// Creates a new [BrokerUser].
  /// [consoleAccess] Whether to enable access to the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) for the user. Applies to `engine_type` of `ActiveMQ` only.
  /// [groups] List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to `engine_type` of `ActiveMQ` only.
  /// [password] Password of the user. Must be 12 to 250 characters long, contain at least 4 unique characters, and must not contain commas.
  /// [replicationUser] Whether to set replication user. Defaults to `false`.
  /// [username] Username of the user.
  BrokerUser({
    this.consoleAccess,
    this.groups,
    required this.password,
    this.replicationUser,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleAccess': ?consoleAccess,
      'groups': ?groups,
      'password': password,
      'replicationUser': ?replicationUser,
      'username': username,
    };
  }

  factory BrokerUser.fromMap(Map<String, dynamic> map) {
    return BrokerUser(
      consoleAccess: map['consoleAccess'] == null
          ? null
          : map['consoleAccess'] as bool,
      groups: map['groups'] == null
          ? null
          : (map['groups'] as List).cast<String>(),
      password: map['password'] as String,
      replicationUser: map['replicationUser'] == null
          ? null
          : map['replicationUser'] as bool,
      username: map['username'] as String,
    );
  }
}
