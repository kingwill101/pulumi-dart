// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_connection_info_response.dart';

/// Input for the task that gets the list of tables contained within a provided list of Oracle schemas.
class GetUserTablesOracleTaskInputResponse {
  /// Information for connecting to Oracle source
  final OracleConnectionInfoResponse connectionInfo;
  /// List of Oracle schemas for which to collect tables
  final List<String> selectedSchemas;

  /// Creates a new [GetUserTablesOracleTaskInputResponse].
  /// [connectionInfo] Information for connecting to Oracle source
  /// [selectedSchemas] List of Oracle schemas for which to collect tables
  GetUserTablesOracleTaskInputResponse({
    required this.connectionInfo,
    required this.selectedSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': connectionInfo.toMap(),
      'selectedSchemas': selectedSchemas,
    };
  }

  factory GetUserTablesOracleTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskInputResponse(
      connectionInfo: OracleConnectionInfoResponse.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      selectedSchemas: (map['selectedSchemas'] as List).cast<String>(),
    );
  }
}

