// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionTimestreamTimestamp {
  /// The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  final String unit;

  /// An expression that returns a long epoch time value.
  final String value;

  TopicRuleErrorActionTimestreamTimestamp({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory TopicRuleErrorActionTimestreamTimestamp.fromMap(
      Map<String, dynamic> map) {
    return TopicRuleErrorActionTimestreamTimestamp(
      unit: map['unit'] as String,
      value: map['value'] as String,
    );
  }
}
