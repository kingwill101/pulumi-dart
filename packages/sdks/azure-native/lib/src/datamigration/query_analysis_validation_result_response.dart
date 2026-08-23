// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_execution_result_response.dart';
import 'validation_error_response.dart';

/// Results for query analysis comparison between the source and target
class QueryAnalysisValidationResultResponse {
  /// List of queries executed and it's execution results in source and target
  final pulumi.Input<QueryExecutionResultResponse>? queryResults;
  /// Errors that are part of the execution
  final pulumi.Input<ValidationErrorResponse>? validationErrors;

  /// Creates a new [QueryAnalysisValidationResultResponse].
  /// [queryResults] List of queries executed and it's execution results in source and target
  /// [validationErrors] Errors that are part of the execution
  const QueryAnalysisValidationResultResponse({
    this.queryResults,
    this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryResults': ?pulumi.Input.mapOptionalInputValue<QueryExecutionResultResponse, Map<String, dynamic>>(queryResults, (value) => value.toMap()),
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<ValidationErrorResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory QueryAnalysisValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return QueryAnalysisValidationResultResponse(
      queryResults: (() { final guardedValue = map['queryResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryExecutionResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationErrors: (() { final guardedValue = map['validationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
