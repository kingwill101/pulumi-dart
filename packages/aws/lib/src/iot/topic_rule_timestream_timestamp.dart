// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleTimestreamTimestamp {
  /// The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  final String unit;

  /// An expression that returns a long epoch time value.
  final String value;

  /// Creates a new [TopicRuleTimestreamTimestamp].
  /// [unit] The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  /// [value] An expression that returns a long epoch time value.
  TopicRuleTimestreamTimestamp({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory TopicRuleTimestreamTimestamp.fromMap(Map<String, dynamic> map) {
    return TopicRuleTimestreamTimestamp(
      unit: map['unit'] as String,
      value: map['value'] as String,
    );
  }
}
