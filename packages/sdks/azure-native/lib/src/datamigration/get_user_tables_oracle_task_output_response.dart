// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_table_response.dart';
import 'reportable_exception_response.dart';

/// Output for the task that gets the list of tables contained within a provided list of Oracle schemas.
class GetUserTablesOracleTaskOutputResponse {
  /// The schema this result is for
  final pulumi.Input<String> schemaName;
  /// List of valid tables found for this schema
  final pulumi.Input<List<DatabaseTableResponse>> tables;
  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [GetUserTablesOracleTaskOutputResponse].
  /// [schemaName] The schema this result is for
  /// [tables] List of valid tables found for this schema
  /// [validationErrors] Validation errors associated with the task
  GetUserTablesOracleTaskOutputResponse({
    required this.schemaName,
    required this.tables,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaName': schemaName,
      'tables': pulumi.Input.mapInputValue<List<DatabaseTableResponse>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserTablesOracleTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskOutputResponse(
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      tables: pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseTableResponse>(map['tables']!, (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

