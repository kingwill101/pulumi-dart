// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleAdvanceRolloutRule {
  /// Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final String id;

  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final List<String>? sourcePhases;

  /// Optional. How long to wait after a rollout is finished.
  final String? wait;

  AutomationRuleAdvanceRolloutRule({
    required this.id,
    this.sourcePhases,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final sourcePhasesValue = sourcePhases;
    if (sourcePhasesValue != null) {
      map['sourcePhases'] = sourcePhasesValue;
    }
    final waitValue = wait;
    if (waitValue != null) {
      map['wait'] = waitValue;
    }
    return map;
  }

  factory AutomationRuleAdvanceRolloutRule.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAdvanceRolloutRule(
      id: map['id'] as String,
      sourcePhases: map['sourcePhases'] == null
          ? null
          : (map['sourcePhases'] as List).cast<String>(),
      wait: map['wait'] == null ? null : map['wait'] as String,
    );
  }
}
