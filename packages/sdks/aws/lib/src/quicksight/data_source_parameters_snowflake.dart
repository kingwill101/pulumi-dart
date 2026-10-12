// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersSnowflake {
  /// Database to which to connect.
  final pulumi.Input<String> database;
  /// Host to which to connect.
  final pulumi.Input<String> host;
  /// Warehouse to which to connect.
  final pulumi.Input<String> warehouse;

  /// Creates a new [DataSourceParametersSnowflake].
  /// [database] Database to which to connect.
  /// [host] Host to which to connect.
  /// [warehouse] Warehouse to which to connect.
  const DataSourceParametersSnowflake({
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
