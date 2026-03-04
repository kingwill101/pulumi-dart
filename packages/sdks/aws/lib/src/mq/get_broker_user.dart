// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerUser {
  /// Whether to enable access to the ActiveMQ Web Console for the user.
  final pulumi.Input<bool> consoleAccess;

  /// List of groups to which the ActiveMQ user belongs.
  final pulumi.Input<List<String>> groups;

  /// Whether to set replication user.
  final pulumi.Input<bool> replicationUser;

  /// Username of the user.
  final pulumi.Input<String> username;

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
      consoleAccess: pulumi.Input.fromValue(map['consoleAccess'] as bool),
      groups: pulumi.Input.fromValue((map['groups'] as List).cast<String>()),
      replicationUser: pulumi.Input.fromValue(map['replicationUser'] as bool),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
