// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleOverrideAction2 {
  final String type;

  WebAclRuleOverrideAction2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleOverrideAction2.fromMap(Map<String, dynamic> map) {
    return WebAclRuleOverrideAction2(
      type: map['type'] as String,
    );
  }
}
