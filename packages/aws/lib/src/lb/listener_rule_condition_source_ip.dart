// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleConditionSourceIp {
  final List<String> values;

  /// Creates a new [ListenerRuleConditionSourceIp].
  /// [values] Required.
  ListenerRuleConditionSourceIp({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory ListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIp(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

