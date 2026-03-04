// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersSnowflake {
  /// The database to which to connect.
  final pulumi.Input<String> database;

  /// The host to which to connect.
  final pulumi.Input<String> host;

  /// The warehouse to which to connect.
  final pulumi.Input<String> warehouse;

  /// Creates a new [DataSourceParametersSnowflake].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [warehouse] The warehouse to which to connect.
  DataSourceParametersSnowflake({
    required this.database,
    required this.host,
    required this.warehouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'host': host,
      'warehouse': warehouse,
    };
  }

  factory DataSourceParametersSnowflake.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSnowflake(
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      warehouse: pulumi.Input.fromValue(map['warehouse'] as String),
    );
  }
}
