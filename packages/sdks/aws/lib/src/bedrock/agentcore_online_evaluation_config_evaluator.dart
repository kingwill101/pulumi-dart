// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigEvaluator {
  /// Unique identifier of the evaluator. Can reference builtin evaluators (e.g., `Builtin.Helpfulness`, `Builtin.GoalSuccessRate`) or custom evaluator IDs.
  final pulumi.Input<String> evaluatorId;

  /// Creates a new [AgentcoreOnlineEvaluationConfigEvaluator].
  /// [evaluatorId] Unique identifier of the evaluator. Can reference builtin evaluators (e.g., `Builtin.Helpfulness`, `Builtin.GoalSuccessRate`) or custom evaluator IDs.
  const AgentcoreOnlineEvaluationConfigEvaluator({
    required this.evaluatorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluatorId': evaluatorId,
    };
  }

  factory AgentcoreOnlineEvaluationConfigEvaluator.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigEvaluator(
      evaluatorId: pulumi.Input.fromValue(map['evaluatorId'] as String),
    );
  }
}
