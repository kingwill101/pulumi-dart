// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_table_response.dart';
import 'reportable_exception_response.dart';

/// Output of the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskOutputResponse {
  /// Mapping from database name to list of tables
  final Map<String, List<DatabaseTableResponse>> databasesToTables;
  /// Result identifier
  final String id;
  /// Validation errors
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [GetUserTablesSqlTaskOutputResponse].
  /// [databasesToTables] Mapping from database name to list of tables
  /// [id] Result identifier
  /// [validationErrors] Validation errors
  GetUserTablesSqlTaskOutputResponse({
    required this.databasesToTables,
    required this.id,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesToTables': pulumi.Input.encodeMapValues<List<DatabaseTableResponse>, List<Map<String, dynamic>>>(databasesToTables, (value) => pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory GetUserTablesSqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskOutputResponse(
      databasesToTables: pulumi.Input.decodeMapValues<List<DatabaseTableResponse>>(map['databasesToTables'], (value) => pulumi.Input.decodeList<DatabaseTableResponse>(value, (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

