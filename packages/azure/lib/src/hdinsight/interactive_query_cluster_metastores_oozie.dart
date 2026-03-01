// ignore_for_file: unused_element, unnecessary_cast


class InteractiveQueryClusterMetastoresOozie {
  /// The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created.
  final String databaseName;
  /// The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  final String password;
  /// The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created.
  final String server;
  /// The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  final String username;

  /// Creates a new [InteractiveQueryClusterMetastoresOozie].
  /// [databaseName] The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created.
  /// [password] The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  /// [server] The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created.
  /// [username] The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  InteractiveQueryClusterMetastoresOozie({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'password': password,
      'server': server,
      'username': username,
    };
  }

  factory InteractiveQueryClusterMetastoresOozie.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterMetastoresOozie(
      databaseName: map['databaseName'] as String,
      password: map['password'] as String,
      server: map['server'] as String,
      username: map['username'] as String,
    );
  }
}

