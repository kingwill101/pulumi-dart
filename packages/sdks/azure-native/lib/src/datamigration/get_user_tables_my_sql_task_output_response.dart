// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_table_response.dart';
import 'reportable_exception_response.dart';

/// Output of the task that collects user tables for the given list of databases
class GetUserTablesMySqlTaskOutputResponse {
  /// Mapping from database name to list of tables
  final pulumi.Input<Map<String, List<DatabaseTableResponse>>> databasesToTables;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [GetUserTablesMySqlTaskOutputResponse].
  /// [databasesToTables] Mapping from database name to list of tables
  /// [id] Result identifier
  /// [validationErrors] Validation errors
  const GetUserTablesMySqlTaskOutputResponse({
    required this.databasesToTables,
    required this.id,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesToTables': pulumi.Input.mapInputValue<Map<String, List<DatabaseTableResponse>>, Map<String, List<Map<String, dynamic>>>>(databasesToTables, (value) => pulumi.Input.encodeMapValues<List<DatabaseTableResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'id': id,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserTablesMySqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesMySqlTaskOutputResponse(
      databasesToTables: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<DatabaseTableResponse>>(map['databasesToTables']!, (value) => pulumi.Input.decodeList<DatabaseTableResponse>(value, (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>())))),
      id: pulumi.Input.fromValue(map['id'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
