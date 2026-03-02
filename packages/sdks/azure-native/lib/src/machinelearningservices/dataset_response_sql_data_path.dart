// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sql Query/Table/Stored Procedure details.
class DatasetResponseSqlDataPath {
  /// SQL query timeout. Unit in seconds.
  final pulumi.Input<double> queryTimeout;
  /// SQL query
  final pulumi.Input<String> sqlQuery;
  /// SQL storedProcedure name
  final pulumi.Input<String> sqlStoredProcedureName;
  /// SQL table name
  final pulumi.Input<String> sqlTableName;

  /// Creates a new [DatasetResponseSqlDataPath].
  /// [queryTimeout] SQL query timeout. Unit in seconds.
  /// [sqlQuery] SQL query
  /// [sqlStoredProcedureName] SQL storedProcedure name
  /// [sqlTableName] SQL table name
  DatasetResponseSqlDataPath({
    required this.queryTimeout,
    required this.sqlQuery,
    required this.sqlStoredProcedureName,
    required this.sqlTableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryTimeout': queryTimeout,
      'sqlQuery': sqlQuery,
      'sqlStoredProcedureName': sqlStoredProcedureName,
      'sqlTableName': sqlTableName,
    };
  }

  factory DatasetResponseSqlDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetResponseSqlDataPath(
      queryTimeout: (map['queryTimeout'] as double).input(),
      sqlQuery: (map['sqlQuery'] as String).input(),
      sqlStoredProcedureName: (map['sqlStoredProcedureName'] as String).input(),
      sqlTableName: (map['sqlTableName'] as String).input(),
    );
  }
}

