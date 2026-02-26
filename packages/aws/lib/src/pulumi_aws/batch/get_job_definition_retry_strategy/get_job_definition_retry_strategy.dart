// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_definition_retry_strategy_evaluate_on_exit/get_job_definition_retry_strategy_evaluate_on_exit.dart';

class GetJobDefinitionRetryStrategy {
  /// The number of times to move a job to the RUNNABLE status.
  final int attempts;

  /// Array of up to 5 objects that specify the conditions where jobs are retried or failed.
  final List<GetJobDefinitionRetryStrategyEvaluateOnExit> evaluateOnExits;

  GetJobDefinitionRetryStrategy({
    required this.attempts,
    required this.evaluateOnExits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attempts'] = attempts;
    map['evaluateOnExits'] = Input.encodeList<
        GetJobDefinitionRetryStrategyEvaluateOnExit,
        Map<String, dynamic>>(evaluateOnExits, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionRetryStrategy(
      attempts: map['attempts'] as int,
      evaluateOnExits:
          Input.decodeList<GetJobDefinitionRetryStrategyEvaluateOnExit>(
              map['evaluateOnExits'],
              (value) => GetJobDefinitionRetryStrategyEvaluateOnExit.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
