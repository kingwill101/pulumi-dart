// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_table_response.dart';
import 'reportable_exception_response.dart';

/// Output of the task that collects user tables for the given list of databases
class GetUserTablesSqlSyncTaskOutputResponse {
  /// Mapping from database name to list of source tables
  final pulumi.Input<Map<String, List<DatabaseTableResponse>>> databasesToSourceTables;
  /// Mapping from database name to list of target tables
  final pulumi.Input<Map<String, List<DatabaseTableResponse>>> databasesToTargetTables;
  /// Mapping from database name to list of validation errors
  final pulumi.Input<Map<String, List<String>>> tableValidationErrors;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [GetUserTablesSqlSyncTaskOutputResponse].
  /// [databasesToSourceTables] Mapping from database name to list of source tables
  /// [databasesToTargetTables] Mapping from database name to list of target tables
  /// [tableValidationErrors] Mapping from database name to list of validation errors
  /// [validationErrors] Validation errors
  const GetUserTablesSqlSyncTaskOutputResponse({
    required this.databasesToSourceTables,
    required this.databasesToTargetTables,
    required this.tableValidationErrors,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesToSourceTables': pulumi.Input.mapInputValue<Map<String, List<DatabaseTableResponse>>, Map<String, List<Map<String, dynamic>>>>(databasesToSourceTables, (value) => pulumi.Input.encodeMapValues<List<DatabaseTableResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'databasesToTargetTables': pulumi.Input.mapInputValue<Map<String, List<DatabaseTableResponse>>, Map<String, List<Map<String, dynamic>>>>(databasesToTargetTables, (value) => pulumi.Input.encodeMapValues<List<DatabaseTableResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'tableValidationErrors': tableValidationErrors,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserTablesSqlSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlSyncTaskOutputResponse(
      databasesToSourceTables: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<DatabaseTableResponse>>(map['databasesToSourceTables']!, (value) => pulumi.Input.decodeList<DatabaseTableResponse>(value, (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>())))),
      databasesToTargetTables: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<DatabaseTableResponse>>(map['databasesToTargetTables']!, (value) => pulumi.Input.decodeList<DatabaseTableResponse>(value, (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>())))),
      tableValidationErrors: pulumi.Input.fromValue((map['tableValidationErrors'] as Map).cast<String, List<String>>()),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

