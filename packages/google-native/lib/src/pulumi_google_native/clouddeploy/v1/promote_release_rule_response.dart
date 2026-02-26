// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_condition_response.dart';

/// `PromoteRelease` rule will automatically promote a release from the current target to a specified target.
class PromoteReleaseRuleResponse {
  /// Information around the state of the Automation rule.
  final AutomationRuleConditionResponse condition;

  /// Optional. The starting phase of the rollout created by this operation. Default to the first phase.
  final String destinationPhase;

  /// Optional. The ID of the stage in the pipeline to which this `Release` is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * "@next", the next target in the promotion sequence.
  final String destinationTargetId;

  /// Optional. How long the release need to be paused until being promoted to the next target.
  final String wait;

  PromoteReleaseRuleResponse({
    required this.condition,
    required this.destinationPhase,
    required this.destinationTargetId,
    required this.wait,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    map['destinationPhase'] = destinationPhase;
    map['destinationTargetId'] = destinationTargetId;
    map['wait'] = wait;
    return map;
  }

  factory PromoteReleaseRuleResponse.fromMap(Map<String, dynamic> map) {
    return PromoteReleaseRuleResponse(
      condition: AutomationRuleConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      destinationPhase: map['destinationPhase'] as String,
      destinationTargetId: map['destinationTargetId'] as String,
      wait: map['wait'] as String,
    );
  }
}
