// ignore_for_file: unused_element, unnecessary_cast

class PlanTriggerCondition {
  /// Name of the associated alarm.
  final String associatedAlarmName;

  /// Condition to check. Valid values: <span pulumi-lang-nodejs="`red`" pulumi-lang-dotnet="`Red`" pulumi-lang-go="`red`" pulumi-lang-python="`red`" pulumi-lang-yaml="`red`" pulumi-lang-java="`red`">`red`</span>, <span pulumi-lang-nodejs="`green`" pulumi-lang-dotnet="`Green`" pulumi-lang-go="`green`" pulumi-lang-python="`green`" pulumi-lang-yaml="`green`" pulumi-lang-java="`green`">`green`</span>.
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
