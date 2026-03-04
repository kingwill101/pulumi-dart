// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionTimestreamTimestamp {
  /// The precision of the timestamp value that results from the expression described in value. Valid values: `SECONDS`, `MILLISECONDS`, `MICROSECONDS`, `NANOSECONDS`.
  final pulumi.Input<String> unit;

  /// An expression that returns a long epoch time value.
  final pulumi.Input<String> value;

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
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
