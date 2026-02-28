// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_retry_strategy_evaluate_on_exit.dart';

class JobDefinitionRetryStrategy {
  /// Number of times to move a job to the `RUNNABLE` status. You may specify between `1` and `10` attempts.
  final int? attempts;
  /// Evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the `attempts` parameter must also be specified. You may specify up to 5 configuration blocks.
  final List<JobDefinitionRetryStrategyEvaluateOnExit>? evaluateOnExits;

  /// Creates a new [JobDefinitionRetryStrategy].
  /// [attempts] Number of times to move a job to the `RUNNABLE` status. You may specify between `1` and `10` attempts.
  /// [evaluateOnExits] Evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the `attempts` parameter must also be specified. You may specify up to 5 configuration blocks.
  JobDefinitionRetryStrategy({
    this.attempts,
    this.evaluateOnExits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': ?attempts,
      'evaluateOnExits': ?evaluateOnExits == null ? null : pulumi.Input.encodeList<JobDefinitionRetryStrategyEvaluateOnExit, Map<String, dynamic>>(evaluateOnExits!, (value) => value.toMap()),
    };
  }

  factory JobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return JobDefinitionRetryStrategy(
      attempts: map['attempts'] == null ? null : map['attempts'] as int,
      evaluateOnExits: map['evaluateOnExits'] == null ? null : pulumi.Input.decodeList<JobDefinitionRetryStrategyEvaluateOnExit>(map['evaluateOnExits'], (value) => JobDefinitionRetryStrategyEvaluateOnExit.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

