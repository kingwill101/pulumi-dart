// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_definition_retry_strategy_evaluate_on_exit/job_definition_retry_strategy_evaluate_on_exit.dart';

class JobDefinitionRetryStrategy {
  /// Number of times to move a job to the `RUNNABLE` status. You may specify between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span> attempts.
  final int? attempts;

  /// Evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the <span pulumi-lang-nodejs="`attempts`" pulumi-lang-dotnet="`Attempts`" pulumi-lang-go="`attempts`" pulumi-lang-python="`attempts`" pulumi-lang-yaml="`attempts`" pulumi-lang-java="`attempts`">`attempts`</span> parameter must also be specified. You may specify up to 5 configuration blocks.
  final List<JobDefinitionRetryStrategyEvaluateOnExit>? evaluateOnExits;

  JobDefinitionRetryStrategy({
    this.attempts,
    this.evaluateOnExits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attemptsValue = attempts;
    if (attemptsValue != null) {
      map['attempts'] = attemptsValue;
    }
    final evaluateOnExitsValue = evaluateOnExits;
    if (evaluateOnExitsValue != null) {
      map['evaluateOnExits'] = Input.encodeList<
          JobDefinitionRetryStrategyEvaluateOnExit,
          Map<String, dynamic>>(evaluateOnExitsValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return JobDefinitionRetryStrategy(
      attempts: map['attempts'] == null ? null : map['attempts'] as int,
      evaluateOnExits: map['evaluateOnExits'] == null
          ? null
          : Input.decodeList<JobDefinitionRetryStrategyEvaluateOnExit>(
              map['evaluateOnExits'],
              (value) => JobDefinitionRetryStrategyEvaluateOnExit.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
