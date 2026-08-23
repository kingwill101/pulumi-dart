// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_on_failure_condition.dart';
import 'pipeline_stage_on_failure_retry_configuration.dart';

class PipelineStageOnFailure {
  /// The conditions that are failure conditions. Defined as a `condition` block below.
  final pulumi.Input<PipelineStageOnFailureCondition>? condition;
  /// The conditions that are configured as failure conditions. Possible values are `ROLLBACK`,  `FAIL`, `RETRY` and `SKIP`.
  final pulumi.Input<String>? result;
  /// The retry configuration specifies automatic retry for a failed stage, along with the configured retry mode. Defined as a `retryConfiguration` block below.
  final pulumi.Input<PipelineStageOnFailureRetryConfiguration>? retryConfiguration;

  /// Creates a new [PipelineStageOnFailure].
  /// [condition] The conditions that are failure conditions. Defined as a `condition` block below.
  /// [result] The conditions that are configured as failure conditions. Possible values are `ROLLBACK`,  `FAIL`, `RETRY` and `SKIP`.
  /// [retryConfiguration] The retry configuration specifies automatic retry for a failed stage, along with the configured retry mode. Defined as a `retryConfiguration` block below.
  const PipelineStageOnFailure({
    this.condition,
    this.result,
    this.retryConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<PipelineStageOnFailureCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'result': ?result,
      'retryConfiguration': ?pulumi.Input.mapOptionalInputValue<PipelineStageOnFailureRetryConfiguration, Map<String, dynamic>>(retryConfiguration, (value) => value.toMap()),
    };
  }

  factory PipelineStageOnFailure.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailure(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStageOnFailureCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryConfiguration: (() { final guardedValue = map['retryConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStageOnFailureRetryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
