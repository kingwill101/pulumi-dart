// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_table_response.dart';
import 'reportable_exception_response.dart';

/// Output for the task that gets the list of tables for a provided list of PostgreSQL databases.
class GetUserTablesPostgreSqlTaskOutputResponse {
  /// The database this result is for
  final String databaseName;
  /// List of valid tables found for this database
  final List<DatabaseTableResponse> tables;
  /// Validation errors associated with the task
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [GetUserTablesPostgreSqlTaskOutputResponse].
  /// [databaseName] The database this result is for
  /// [tables] List of valid tables found for this database
  /// [validationErrors] Validation errors associated with the task
  GetUserTablesPostgreSqlTaskOutputResponse({
    required this.databaseName,
    required this.tables,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'tables': pulumi.Input.encodeList<DatabaseTableResponse, Map<String, dynamic>>(tables, (value) => value.toMap()),
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory GetUserTablesPostgreSqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesPostgreSqlTaskOutputResponse(
      databaseName: map['databaseName'] as String,
      tables: pulumi.Input.decodeList<DatabaseTableResponse>(map['tables'], (value) => DatabaseTableResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

