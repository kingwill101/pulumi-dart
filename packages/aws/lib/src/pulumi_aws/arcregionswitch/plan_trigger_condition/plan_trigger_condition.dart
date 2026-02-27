// ignore_for_file: unused_element, unnecessary_cast

class PlanTriggerCondition {
  /// Name of the associated alarm.
  final String associatedAlarmName;

  /// Condition to check. Valid values: `red`, `green`.
  final String condition;

  PlanTriggerCondition({
    required this.associatedAlarmName,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associatedAlarmName'] = associatedAlarmName;
    map['condition'] = condition;
    return map;
  }

  factory PlanTriggerCondition.fromMap(Map<String, dynamic> map) {
    return PlanTriggerCondition(
      associatedAlarmName: map['associatedAlarmName'] as String,
      condition: map['condition'] as String,
    );
  }
}
