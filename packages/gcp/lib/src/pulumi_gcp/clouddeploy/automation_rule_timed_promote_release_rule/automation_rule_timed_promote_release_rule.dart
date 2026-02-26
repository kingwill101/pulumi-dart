// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleTimedPromoteReleaseRule {
  /// Optional. The starting phase of the rollout created by this rule. Default to the first phase.
  final String? destinationPhase;

  /// Optional. The ID of the stage in the pipeline to which this Release is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following:
  /// - The last segment of a target name
  /// - "@next", the next target in the promotion sequence"
  final String? destinationTargetId;

  /// Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final String id;

  /// Required. Schedule in crontab format. e.g. `0 9 * * 1` for every Monday at 9am.
  final String schedule;

  /// Required. The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  final String timeZone;

  AutomationRuleTimedPromoteReleaseRule({
    this.destinationPhase,
    this.destinationTargetId,
    required this.id,
    required this.schedule,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationPhaseValue = destinationPhase;
    if (destinationPhaseValue != null) {
      map['destinationPhase'] = destinationPhaseValue;
    }
    final destinationTargetIdValue = destinationTargetId;
    if (destinationTargetIdValue != null) {
      map['destinationTargetId'] = destinationTargetIdValue;
    }
    map['id'] = id;
    map['schedule'] = schedule;
    map['timeZone'] = timeZone;
    return map;
  }

  factory AutomationRuleTimedPromoteReleaseRule.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleTimedPromoteReleaseRule(
      destinationPhase: map['destinationPhase'] == null
          ? null
          : map['destinationPhase'] as String,
      destinationTargetId: map['destinationTargetId'] == null
          ? null
          : map['destinationTargetId'] as String,
      id: map['id'] as String,
      schedule: map['schedule'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
