// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that gets the list of tables for a provided list of PostgreSQL databases.
class GetUserTablesPostgreSqlTaskInputResponse {
  /// Information for connecting to PostgreSQL source
  final pulumi.Input<PostgreSqlConnectionInfoResponse> connectionInfo;
  /// List of PostgreSQL databases for which to collect tables
  final pulumi.Input<List<String>> selectedDatabases;

  /// Creates a new [GetUserTablesPostgreSqlTaskInputResponse].
  /// [connectionInfo] Information for connecting to PostgreSQL source
  /// [selectedDatabases] List of PostgreSQL databases for which to collect tables
  const GetUserTablesPostgreSqlTaskInputResponse({
    required this.connectionInfo,
    required this.selectedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfoResponse, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'selectedDatabases': selectedDatabases,
    };
  }

  factory GetUserTablesPostgreSqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesPostgreSqlTaskInputResponse(
      connectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfoResponse.fromMap((map['connectionInfo']! as Map).cast<String, dynamic>())),
      selectedDatabases: pulumi.Input.fromValue((map['selectedDatabases'] as List).cast<String>()),
    );
  }
}
