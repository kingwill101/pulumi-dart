// ignore_for_file: unused_element, unnecessary_cast


class ClusterMetaStoreConf {
  /// Custom rds database password.
  final String dbPassword;
  /// Custom rds database connection url.
  final String dbUrl;
  /// Custom rds database user name.
  final String dbUserName;

  /// Creates a new [ClusterMetaStoreConf].
  /// [dbPassword] Custom rds database password.
  /// [dbUrl] Custom rds database connection url.
  /// [dbUserName] Custom rds database user name.
  ClusterMetaStoreConf({
    required this.dbPassword,
    required this.dbUrl,
    required this.dbUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbPassword': dbPassword,
      'dbUrl': dbUrl,
      'dbUserName': dbUserName,
    };
  }

  factory ClusterMetaStoreConf.fromMap(Map<String, dynamic> map) {
    return ClusterMetaStoreConf(
      dbPassword: map['dbPassword'] as String,
      dbUrl: map['dbUrl'] as String,
      dbUserName: map['dbUserName'] as String,
    );
  }
}

