// ignore_for_file: unused_element, unnecessary_cast

class PlanTriggerCondition {
  /// Name of the associated alarm.
  final String associatedAlarmName;

  /// Condition to check. Valid values: `red`, `green`.
  final String condition;

  /// Creates a new [PlanTriggerCondition].
  /// [associatedAlarmName] Name of the associated alarm.
  /// [condition] Condition to check. Valid values: `red`, `green`.
  PlanTriggerCondition({
    required this.associatedAlarmName,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedAlarmName': associatedAlarmName,
      'condition': condition,
    };
  }

  factory PlanTriggerCondition.fromMap(Map<String, dynamic> map) {
    return PlanTriggerCondition(
      associatedAlarmName: map['associatedAlarmName'] as String,
      condition: map['condition'] as String,
    );
  }
}
