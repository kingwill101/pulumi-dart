/// The type of auto scaling trigger
enum AutoScalingTriggerKind {
  valueAverageLoad("AverageLoad");

  const AutoScalingTriggerKind(this.value);
  final String value;

  static AutoScalingTriggerKind fromValue(String value) {
    for (final item in AutoScalingTriggerKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingTriggerKind value: $value');
  }
}

