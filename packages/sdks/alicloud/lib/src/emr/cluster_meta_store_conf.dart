// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMetaStoreConf {
  /// Custom rds database password.
  final pulumi.Input<String> dbPassword;
  /// Custom rds database connection url.
  final pulumi.Input<String> dbUrl;
  /// Custom rds database user name.
  final pulumi.Input<String> dbUserName;

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
      dbPassword: pulumi.Input.fromValue(map['dbPassword'] as String),
      dbUrl: pulumi.Input.fromValue(map['dbUrl'] as String),
      dbUserName: pulumi.Input.fromValue(map['dbUserName'] as String),
    );
  }
}

