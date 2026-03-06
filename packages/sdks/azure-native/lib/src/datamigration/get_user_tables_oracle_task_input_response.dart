// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_connection_info_response.dart';

/// Input for the task that gets the list of tables contained within a provided list of Oracle schemas.
class GetUserTablesOracleTaskInputResponse {
  /// Information for connecting to Oracle source
  final pulumi.Input<OracleConnectionInfoResponse> connectionInfo;
  /// List of Oracle schemas for which to collect tables
  final pulumi.Input<List<String>> selectedSchemas;

  /// Creates a new [GetUserTablesOracleTaskInputResponse].
  /// [connectionInfo] Information for connecting to Oracle source
  /// [selectedSchemas] List of Oracle schemas for which to collect tables
  const GetUserTablesOracleTaskInputResponse({
    required this.connectionInfo,
    required this.selectedSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': pulumi.Input.mapInputValue<OracleConnectionInfoResponse, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'selectedSchemas': selectedSchemas,
    };
  }

  factory GetUserTablesOracleTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskInputResponse(
      connectionInfo: pulumi.Input.fromValue(OracleConnectionInfoResponse.fromMap((map['connectionInfo']! as Map).cast<String, dynamic>())),
      selectedSchemas: pulumi.Input.fromValue((map['selectedSchemas'] as List).cast<String>()),
    );
  }
}

