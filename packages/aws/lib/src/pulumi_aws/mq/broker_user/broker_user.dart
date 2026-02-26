// ignore_for_file: unused_element, unnecessary_cast

class BrokerUser {
  /// Whether to enable access to the [ActiveMQ Web Console](http://activemq.apache.org/web-console.html) for the user. Applies to <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> of `ActiveMQ` only.
  final bool? consoleAccess;

  /// List of groups (20 maximum) to which the ActiveMQ user belongs. Applies to <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> of `ActiveMQ` only.
  final List<String>? groups;

  /// Password of the user. Must be 12 to 250 characters long, contain at least 4 unique characters, and must not contain commas.
  final String password;

  /// Whether to set replication user. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? replicationUser;

  /// Username of the user.
  ///
  /// The following arguments are optional:
  final String username;

  BrokerUser({
    this.consoleAccess,
    this.groups,
    required this.password,
    this.replicationUser,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consoleAccessValue = consoleAccess;
    if (consoleAccessValue != null) {
      map['consoleAccess'] = consoleAccessValue;
    }
    final groupsValue = groups;
    if (groupsValue != null) {
      map['groups'] = groupsValue;
    }
    map['password'] = password;
    final replicationUserValue = replicationUser;
    if (replicationUserValue != null) {
      map['replicationUser'] = replicationUserValue;
    }
    map['username'] = username;
    return map;
  }

  factory BrokerUser.fromMap(Map<String, dynamic> map) {
    return BrokerUser(
      consoleAccess:
          map['consoleAccess'] == null ? null : map['consoleAccess'] as bool,
      groups:
          map['groups'] == null ? null : (map['groups'] as List).cast<String>(),
      password: map['password'] as String,
      replicationUser: map['replicationUser'] == null
          ? null
          : map['replicationUser'] as bool,
      username: map['username'] as String,
    );
  }
}
