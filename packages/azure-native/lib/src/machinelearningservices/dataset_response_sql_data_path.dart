// ignore_for_file: unused_element, unnecessary_cast


/// Sql Query/Table/Stored Procedure details.
class DatasetResponseSqlDataPath {
  /// SQL query timeout. Unit in seconds.
  final double queryTimeout;
  /// SQL query
  final String sqlQuery;
  /// SQL storedProcedure name
  final String sqlStoredProcedureName;
  /// SQL table name
  final String sqlTableName;

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
      queryTimeout: map['queryTimeout'] as double,
      sqlQuery: map['sqlQuery'] as String,
      sqlStoredProcedureName: map['sqlStoredProcedureName'] as String,
      sqlTableName: map['sqlTableName'] as String,
    );
  }
}

