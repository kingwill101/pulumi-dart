// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionHttpRequestMethodLb {
  final List<String> values;

  ListenerRuleConditionHttpRequestMethodLb({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionHttpRequestMethodLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleConditionHttpRequestMethodLb(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
