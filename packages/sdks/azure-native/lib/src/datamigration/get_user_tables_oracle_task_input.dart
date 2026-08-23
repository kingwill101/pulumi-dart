// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_connection_info.dart';

/// Input for the task that gets the list of tables contained within a provided list of Oracle schemas.
class GetUserTablesOracleTaskInput {
  /// Information for connecting to Oracle source
  final pulumi.Input<OracleConnectionInfo> connectionInfo;
  /// List of Oracle schemas for which to collect tables
  final pulumi.Input<List<String>> selectedSchemas;

  /// Creates a new [GetUserTablesOracleTaskInput].
  /// [connectionInfo] Information for connecting to Oracle source
  /// [selectedSchemas] List of Oracle schemas for which to collect tables
  const GetUserTablesOracleTaskInput({
    required this.connectionInfo,
    required this.selectedSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionInfo': pulumi.Input.mapInputValue<OracleConnectionInfo, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'selectedSchemas': selectedSchemas,
    };
  }

  factory GetUserTablesOracleTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskInput(
      connectionInfo: pulumi.Input.fromValue(OracleConnectionInfo.fromMap((map['connectionInfo']! as Map).cast<String, dynamic>())),
      selectedSchemas: pulumi.Input.fromValue((map['selectedSchemas'] as List).cast<String>()),
    );
  }
}
