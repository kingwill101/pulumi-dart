// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlDbSyncTaskOutputErrorResponse {
  /// Migration error
  final pulumi.Input<ReportableExceptionResponse> error;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Result type
  /// Expected value is 'ErrorOutput'.
  final pulumi.Input<String> resultType;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskOutputErrorResponse].
  /// [error] Migration error
  /// [id] Result identifier
  /// [resultType] Result type
  MigrateSqlServerSqlDbSyncTaskOutputErrorResponse({
    required this.error,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error':
          pulumi.Input.mapInputValue<
            ReportableExceptionResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskOutputErrorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlDbSyncTaskOutputErrorResponse(
      error: pulumi.Input.fromValue(
        ReportableExceptionResponse.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
    );
  }
}
