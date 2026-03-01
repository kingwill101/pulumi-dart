// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_stage_on_failure_condition.dart';
import 'pipeline_stage_on_failure_retry_configuration.dart';

class PipelineStageOnFailure {
  /// The conditions that are failure conditions. Defined as a `condition` block below.
  final PipelineStageOnFailureCondition? condition;

  /// The conditions that are configured as failure conditions. Possible values are `ROLLBACK`,  `FAIL`, `RETRY` and `SKIP`.
  final String? result;

  /// The retry configuration specifies automatic retry for a failed stage, along with the configured retry mode. Defined as a `retry_configuration` block below.
  final PipelineStageOnFailureRetryConfiguration? retryConfiguration;

  /// Creates a new [PipelineStageOnFailure].
  /// [condition] The conditions that are failure conditions. Defined as a `condition` block below.
  /// [result] The conditions that are configured as failure conditions. Possible values are `ROLLBACK`,  `FAIL`, `RETRY` and `SKIP`.
  /// [retryConfiguration] The retry configuration specifies automatic retry for a failed stage, along with the configured retry mode. Defined as a `retry_configuration` block below.
  PipelineStageOnFailure({
    this.condition,
    this.result,
    this.retryConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'result': ?result,
      'retryConfiguration': ?retryConfiguration == null
          ? null
          : retryConfiguration!.toMap(),
    };
  }

  factory PipelineStageOnFailure.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailure(
      condition: map['condition'] == null
          ? null
          : PipelineStageOnFailureCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      result: map['result'] == null ? null : map['result'] as String,
      retryConfiguration: map['retryConfiguration'] == null
          ? null
          : PipelineStageOnFailureRetryConfiguration.fromMap(
              (map['retryConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
