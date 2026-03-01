// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionTimestreamTimestamp {
  /// The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  final String unit;

  /// An expression that returns a long epoch time value.
  final String value;

  /// Creates a new [TopicRuleErrorActionTimestreamTimestamp].
  /// [unit] The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  /// [value] An expression that returns a long epoch time value.
  TopicRuleErrorActionTimestreamTimestamp({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory TopicRuleErrorActionTimestreamTimestamp.fromMap(
    Map<String, dynamic> map,
  ) {
    return TopicRuleErrorActionTimestreamTimestamp(
      unit: map['unit'] as String,
      value: map['value'] as String,
    );
  }
}
