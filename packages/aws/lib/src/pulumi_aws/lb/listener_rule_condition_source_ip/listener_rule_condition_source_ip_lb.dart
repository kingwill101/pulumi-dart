// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionSourceIpLb {
  final List<String> values;

  ListenerRuleConditionSourceIpLb({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionSourceIpLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIpLb(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
