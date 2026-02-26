// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionHttpRequestMethod2 {
  final List<String> values;

  ListenerRuleConditionHttpRequestMethod2({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionHttpRequestMethod2.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleConditionHttpRequestMethod2(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
