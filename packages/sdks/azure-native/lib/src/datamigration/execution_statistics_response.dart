// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wait_statistics_response.dart';

/// Description about the errors happen while performing migration validation
class ExecutionStatisticsResponse {
  /// CPU Time in millisecond(s) for the query execution
  final pulumi.Input<double>? cpuTimeMs;
  /// Time taken in millisecond(s) for executing the query
  final pulumi.Input<double>? elapsedTimeMs;
  /// No. of query executions
  final pulumi.Input<double>? executionCount;
  /// Indicates whether the query resulted in an error
  final pulumi.Input<bool>? hasErrors;
  /// List of sql Errors
  final pulumi.Input<List<String>>? sqlErrors;
  /// Dictionary of sql query execution wait types and the respective statistics
  final pulumi.Input<Map<String, WaitStatisticsResponse>>? waitStats;

  /// Creates a new [ExecutionStatisticsResponse].
  /// [cpuTimeMs] CPU Time in millisecond(s) for the query execution
  /// [elapsedTimeMs] Time taken in millisecond(s) for executing the query
  /// [executionCount] No. of query executions
  /// [hasErrors] Indicates whether the query resulted in an error
  /// [sqlErrors] List of sql Errors
  /// [waitStats] Dictionary of sql query execution wait types and the respective statistics
  ExecutionStatisticsResponse({
    this.cpuTimeMs,
    this.elapsedTimeMs,
    this.executionCount,
    this.hasErrors,
    this.sqlErrors,
    this.waitStats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuTimeMs': ?cpuTimeMs,
      'elapsedTimeMs': ?elapsedTimeMs,
      'executionCount': ?executionCount,
      'hasErrors': ?hasErrors,
      'sqlErrors': ?sqlErrors,
      'waitStats': ?pulumi.Input.mapOptionalInputValue<Map<String, WaitStatisticsResponse>, Map<String, Map<String, dynamic>>>(waitStats, (value) => pulumi.Input.encodeMapValues<WaitStatisticsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExecutionStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionStatisticsResponse(
      cpuTimeMs: map['cpuTimeMs'] == null ? null : (map['cpuTimeMs']! as double).input(),
      elapsedTimeMs: map['elapsedTimeMs'] == null ? null : (map['elapsedTimeMs']! as double).input(),
      executionCount: map['executionCount'] == null ? null : (map['executionCount']! as double).input(),
      hasErrors: map['hasErrors'] == null ? null : (map['hasErrors']! as bool).input(),
      sqlErrors: map['sqlErrors'] == null ? null : ((map['sqlErrors']! as List).cast<String>()).input(),
      waitStats: map['waitStats'] == null ? null : (pulumi.Input.decodeMapValues<WaitStatisticsResponse>(map['waitStats']!, (value) => WaitStatisticsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

