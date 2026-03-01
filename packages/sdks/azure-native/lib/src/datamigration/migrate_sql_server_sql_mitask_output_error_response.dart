// ignore_for_file: unused_element, unnecessary_cast

import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputErrorResponse {
  /// Migration error
  final ReportableExceptionResponse error;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'ErrorOutput'.
  final String resultType;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputErrorResponse].
  /// [error] Migration error
  /// [id] Result identifier
  /// [resultType] Result type
  MigrateSqlServerSqlMITaskOutputErrorResponse({
    required this.error,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputErrorResponse(
      error: ReportableExceptionResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      resultType: map['resultType'] as String,
    );
  }
}

