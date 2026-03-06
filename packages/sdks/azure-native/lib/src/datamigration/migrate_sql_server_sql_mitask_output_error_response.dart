// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputErrorResponse {
  /// Migration error
  final pulumi.Input<ReportableExceptionResponse> error;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'ErrorOutput'.
  final pulumi.Input<String> resultType;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputErrorResponse].
  /// [error] Migration error
  /// [id] Result identifier
  /// [resultType] Result type
  const MigrateSqlServerSqlMITaskOutputErrorResponse({
    required this.error,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<ReportableExceptionResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputErrorResponse(
      error: pulumi.Input.fromValue(ReportableExceptionResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
    );
  }
}

