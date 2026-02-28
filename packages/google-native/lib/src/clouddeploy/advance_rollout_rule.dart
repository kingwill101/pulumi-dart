// ignore_for_file: unused_element, unnecessary_cast


/// The `AdvanceRollout` automation rule will automatically advance a successful Rollout to the next phase.
class AdvanceRolloutRule {
  /// ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final String id;
  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String>? sourcePhases;
  /// Optional. How long to wait after a rollout is finished.
  final String? wait;

  /// Creates a new [AdvanceRolloutRule].
  /// [id] ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [sourcePhases] Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// [wait] Optional. How long to wait after a rollout is finished.
  AdvanceRolloutRule({
    required this.id,
    this.sourcePhases,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sourcePhases': ?sourcePhases,
      'wait': ?wait,
    };
  }

  factory AdvanceRolloutRule.fromMap(Map<String, dynamic> map) {
    return AdvanceRolloutRule(
      id: map['id'] as String,
      sourcePhases: map['sourcePhases'] == null ? null : (map['sourcePhases'] as List).cast<String>(),
      wait: map['wait'] == null ? null : map['wait'] as String,
    );
  }
}

