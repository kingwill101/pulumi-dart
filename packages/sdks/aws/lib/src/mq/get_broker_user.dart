// ignore_for_file: unused_element, unnecessary_cast


class GetBrokerUser {
  /// Whether to enable access to the ActiveMQ Web Console for the user.
  final bool consoleAccess;
  /// List of groups to which the ActiveMQ user belongs.
  final List<String> groups;
  /// Whether to set replication user.
  final bool replicationUser;
  /// Username of the user.
  final String username;

  /// Creates a new [GetBrokerUser].
  /// [consoleAccess] Whether to enable access to the ActiveMQ Web Console for the user.
  /// [groups] List of groups to which the ActiveMQ user belongs.
  /// [replicationUser] Whether to set replication user.
  /// [username] Username of the user.
  GetBrokerUser({
    required this.consoleAccess,
    required this.groups,
    required this.replicationUser,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleAccess': consoleAccess,
      'groups': groups,
      'replicationUser': replicationUser,
      'username': username,
    };
  }

  factory GetBrokerUser.fromMap(Map<String, dynamic> map) {
    return GetBrokerUser(
      consoleAccess: map['consoleAccess'] as bool,
      groups: (map['groups'] as List).cast<String>(),
      replicationUser: map['replicationUser'] as bool,
      username: map['username'] as String,
    );
  }
}

