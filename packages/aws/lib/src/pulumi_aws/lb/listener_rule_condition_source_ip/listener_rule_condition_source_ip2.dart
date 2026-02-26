// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionSourceIp2 {
  final List<String> values;

  ListenerRuleConditionSourceIp2({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionSourceIp2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIp2(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
