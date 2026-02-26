// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionSourceIp {
  final List<String> values;

  ListenerRuleConditionSourceIp({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIp(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
