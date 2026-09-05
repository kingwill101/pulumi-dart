// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerUser {
  /// Whether to enable access to the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) for the user. Applies to `engineType` of `ActiveMQ` only.
  final pulumi.Input<bool?>? consoleAccess;
  /// List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to `engineType` of `ActiveMQ` only.
  final pulumi.Input<List<String>?>? groups;
  /// Password of the user. Must be 12 to 250 characters long, contain at least 4 unique characters, and must not contain commas.
  final pulumi.Input<String> password;
  /// Whether to set replication user. Defaults to `false`.
  final pulumi.Input<bool?>? replicationUser;
  /// Username of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> username;

  /// Creates a new [BrokerUser].
  /// [consoleAccess] Whether to enable access to the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) for the user. Applies to `engineType` of `ActiveMQ` only.
  /// [groups] List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to `engineType` of `ActiveMQ` only.
  /// [password] Password of the user. Must be 12 to 250 characters long, contain at least 4 unique characters, and must not contain commas.
  /// [replicationUser] Whether to set replication user. Defaults to `false`.
  /// [username] Username of the user.
  const BrokerUser({
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
      consoleAccess: (() { final guardedValue = map['consoleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      replicationUser: (() { final guardedValue = map['replicationUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
