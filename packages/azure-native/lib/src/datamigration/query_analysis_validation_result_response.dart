// ignore_for_file: unused_element, unnecessary_cast

import 'query_execution_result_response.dart';
import 'validation_error_response.dart';

/// Results for query analysis comparison between the source and target
class QueryAnalysisValidationResultResponse {
  /// List of queries executed and it's execution results in source and target
  final QueryExecutionResultResponse? queryResults;
  /// Errors that are part of the execution
  final ValidationErrorResponse? validationErrors;

  /// Creates a new [QueryAnalysisValidationResultResponse].
  /// [queryResults] List of queries executed and it's execution results in source and target
  /// [validationErrors] Errors that are part of the execution
  QueryAnalysisValidationResultResponse({
    this.queryResults,
    this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryResults': ?queryResults == null ? null : queryResults!.toMap(),
      'validationErrors': ?validationErrors == null ? null : validationErrors!.toMap(),
    };
  }

  factory QueryAnalysisValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return QueryAnalysisValidationResultResponse(
      queryResults: map['queryResults'] == null ? null : QueryExecutionResultResponse.fromMap((map['queryResults'] as Map).cast<String, dynamic>()),
      validationErrors: map['validationErrors'] == null ? null : ValidationErrorResponse.fromMap((map['validationErrors'] as Map).cast<String, dynamic>()),
    );
  }
}

