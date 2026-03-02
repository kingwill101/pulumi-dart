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
  QueryExecutionResultResponse({
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
      queryText: map['queryText'] == null ? null : (map['queryText']! as String).input(),
      sourceResult: map['sourceResult'] == null ? null : (ExecutionStatisticsResponse.fromMap((map['sourceResult']! as Map).cast<String, dynamic>())).input(),
      statementsInBatch: map['statementsInBatch'] == null ? null : (map['statementsInBatch']! as double).input(),
      targetResult: map['targetResult'] == null ? null : (ExecutionStatisticsResponse.fromMap((map['targetResult']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

