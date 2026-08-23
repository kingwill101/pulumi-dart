// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_retry_strategy_evaluate_on_exit.dart';

class JobDefinitionRetryStrategy {
  /// Number of times to move a job to the `RUNNABLE` status. You may specify between `1` and `10` attempts.
  final pulumi.Input<int>? attempts;
  /// Evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the `attempts` parameter must also be specified. You may specify up to 5 configuration blocks.
  final pulumi.Input<List<JobDefinitionRetryStrategyEvaluateOnExit>>? evaluateOnExits;

  /// Creates a new [JobDefinitionRetryStrategy].
  /// [attempts] Number of times to move a job to the `RUNNABLE` status. You may specify between `1` and `10` attempts.
  /// [evaluateOnExits] Evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the `attempts` parameter must also be specified. You may specify up to 5 configuration blocks.
  const JobDefinitionRetryStrategy({
    this.attempts,
    this.evaluateOnExits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': ?attempts,
      'evaluateOnExits': ?pulumi.Input.mapOptionalInputValue<List<JobDefinitionRetryStrategyEvaluateOnExit>, List<Map<String, dynamic>>>(evaluateOnExits, (value) => pulumi.Input.encodeList<JobDefinitionRetryStrategyEvaluateOnExit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return JobDefinitionRetryStrategy(
      attempts: (() { final guardedValue = map['attempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      evaluateOnExits: (() { final guardedValue = map['evaluateOnExits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobDefinitionRetryStrategyEvaluateOnExit>(guardedValue, (value) => JobDefinitionRetryStrategyEvaluateOnExit.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
