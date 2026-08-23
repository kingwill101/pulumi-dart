// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_statistics_response.dart';

/// Describes query analysis results for execution in source and target
class QueryExecutionResultResponse {
  /// Query text retrieved from the source server
  final pulumi.Input<String>? queryText;
  /// Query analysis result from the source
  final pulumi.Input<ExecutionStatisticsResponse>? sourceResult;
  /// Total no. of statements in the batch
  final pulumi.Input<double>? statementsInBatch;
  /// Query analysis result from the target
  final pulumi.Input<ExecutionStatisticsResponse>? targetResult;

  /// Creates a new [QueryExecutionResultResponse].
  /// [queryText] Query text retrieved from the source server
  /// [sourceResult] Query analysis result from the source
  /// [statementsInBatch] Total no. of statements in the batch
  /// [targetResult] Query analysis result from the target
  const QueryExecutionResultResponse({
    this.queryText,
    this.sourceResult,
    this.statementsInBatch,
    this.targetResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryText': ?queryText,
      'sourceResult': ?pulumi.Input.mapOptionalInputValue<ExecutionStatisticsResponse, Map<String, dynamic>>(sourceResult, (value) => value.toMap()),
      'statementsInBatch': ?statementsInBatch,
      'targetResult': ?pulumi.Input.mapOptionalInputValue<ExecutionStatisticsResponse, Map<String, dynamic>>(targetResult, (value) => value.toMap()),
    };
  }

  factory QueryExecutionResultResponse.fromMap(Map<String, dynamic> map) {
    return QueryExecutionResultResponse(
      queryText: (() { final guardedValue = map['queryText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResult: (() { final guardedValue = map['sourceResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statementsInBatch: (() { final guardedValue = map['statementsInBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      targetResult: (() { final guardedValue = map['targetResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
