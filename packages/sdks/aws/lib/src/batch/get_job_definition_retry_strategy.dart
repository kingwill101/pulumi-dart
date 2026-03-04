// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_retry_strategy_evaluate_on_exit.dart';

class GetJobDefinitionRetryStrategy {
  /// The number of times to move a job to the RUNNABLE status.
  final pulumi.Input<int> attempts;

  /// Array of up to 5 objects that specify the conditions where jobs are retried or failed.
  final pulumi.Input<List<GetJobDefinitionRetryStrategyEvaluateOnExit>>
  evaluateOnExits;

  /// Creates a new [GetJobDefinitionRetryStrategy].
  /// [attempts] The number of times to move a job to the RUNNABLE status.
  /// [evaluateOnExits] Array of up to 5 objects that specify the conditions where jobs are retried or failed.
  GetJobDefinitionRetryStrategy({
    required this.attempts,
    required this.evaluateOnExits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': attempts,
      'evaluateOnExits':
          pulumi.Input.mapInputValue<
            List<GetJobDefinitionRetryStrategyEvaluateOnExit>,
            List<Map<String, dynamic>>
          >(
            evaluateOnExits,
            (value) =>
                pulumi.Input.encodeList<
                  GetJobDefinitionRetryStrategyEvaluateOnExit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetJobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionRetryStrategy(
      attempts: pulumi.Input.fromValue(map['attempts'] as int),
      evaluateOnExits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetJobDefinitionRetryStrategyEvaluateOnExit>(
          map['evaluateOnExits']!,
          (value) => GetJobDefinitionRetryStrategyEvaluateOnExit.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
