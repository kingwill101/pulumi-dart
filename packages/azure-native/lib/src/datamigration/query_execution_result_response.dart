// ignore_for_file: unused_element, unnecessary_cast

import 'execution_statistics_response.dart';

/// Describes query analysis results for execution in source and target
class QueryExecutionResultResponse {
  /// Query text retrieved from the source server
  final String? queryText;
  /// Query analysis result from the source
  final ExecutionStatisticsResponse? sourceResult;
  /// Total no. of statements in the batch
  final double? statementsInBatch;
  /// Query analysis result from the target
  final ExecutionStatisticsResponse? targetResult;

  /// Creates a new [QueryExecutionResultResponse].
  /// [queryText] Query text retrieved from the source server
  /// [sourceResult] Query analysis result from the source
  /// [statementsInBatch] Total no. of statements in the batch
  /// [targetResult] Query analysis result from the target
  QueryExecutionResultResponse({
    this.queryText,
    this.sourceResult,
    this.statementsInBatch,
    this.targetResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryText': ?queryText,
      'sourceResult': ?sourceResult == null ? null : sourceResult!.toMap(),
      'statementsInBatch': ?statementsInBatch,
      'targetResult': ?targetResult == null ? null : targetResult!.toMap(),
    };
  }

  factory QueryExecutionResultResponse.fromMap(Map<String, dynamic> map) {
    return QueryExecutionResultResponse(
      queryText: map['queryText'] == null ? null : map['queryText'] as String,
      sourceResult: map['sourceResult'] == null ? null : ExecutionStatisticsResponse.fromMap((map['sourceResult'] as Map).cast<String, dynamic>()),
      statementsInBatch: map['statementsInBatch'] == null ? null : map['statementsInBatch'] as double,
      targetResult: map['targetResult'] == null ? null : ExecutionStatisticsResponse.fromMap((map['targetResult'] as Map).cast<String, dynamic>()),
    );
  }
}

