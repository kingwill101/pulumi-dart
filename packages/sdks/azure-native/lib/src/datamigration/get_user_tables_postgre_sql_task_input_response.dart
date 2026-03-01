// ignore_for_file: unused_element, unnecessary_cast

import 'postgre_sql_connection_info_response.dart';

/// Input for the task that gets the list of tables for a provided list of PostgreSQL databases.
class GetUserTablesPostgreSqlTaskInputResponse {
  /// Information for connecting to PostgreSQL source
  final PostgreSqlConnectionInfoResponse connectionInfo;
  /// List of PostgreSQL databases for which to collect tables
  final List<String> selectedDatabases;

  /// Creates a new [GetUserTablesPostgreSqlTaskInputResponse].
  /// [connectionInfo] Information for connecting to PostgreSQL source
  /// [selectedDatabases] List of PostgreSQL databases for which to collect tables
  GetUserTablesPostgreSqlTaskInputResponse({
    required this.connectionInfo,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': connectionInfo.toMap(),
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesPostgreSqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesPostgreSqlTaskInputResponse(
      connectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      selectedDatabases: (map['selectedDatabases'] as List).cast<String>(),
    );
  }
}

