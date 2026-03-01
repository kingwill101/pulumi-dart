// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_connection_info_response.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesMySqlTaskInputResponse {
  /// Connection information for SQL Server
  final MySqlConnectionInfoResponse connectionInfo;
  /// List of database names to collect tables for
  final List<String> selectedDatabases;

  /// Creates a new [GetUserTablesMySqlTaskInputResponse].
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedDatabases] List of database names to collect tables for
  GetUserTablesMySqlTaskInputResponse({
    required this.connectionInfo,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': connectionInfo.toMap(),
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesMySqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesMySqlTaskInputResponse(
      connectionInfo: MySqlConnectionInfoResponse.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      selectedDatabases: (map['selectedDatabases'] as List).cast<String>(),
    );
  }
}

