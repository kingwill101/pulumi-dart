// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_connection_info.dart';

/// Input for the task that gets the list of tables contained within a provided list of Oracle schemas.
class GetUserTablesOracleTaskInput {
  /// Information for connecting to Oracle source
  final OracleConnectionInfo connectionInfo;
  /// List of Oracle schemas for which to collect tables
  final List<String> selectedSchemas;

  /// Creates a new [GetUserTablesOracleTaskInput].
  /// [connectionInfo] Information for connecting to Oracle source
  /// [selectedSchemas] List of Oracle schemas for which to collect tables
  GetUserTablesOracleTaskInput({
    required this.connectionInfo,
    required this.selectedSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': connectionInfo.toMap(),
      'selectedSchemas': selectedSchemas,
    };
  }

  factory GetUserTablesOracleTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskInput(
      connectionInfo: OracleConnectionInfo.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      selectedSchemas: (map['selectedSchemas'] as List).cast<String>(),
    );
  }
}

