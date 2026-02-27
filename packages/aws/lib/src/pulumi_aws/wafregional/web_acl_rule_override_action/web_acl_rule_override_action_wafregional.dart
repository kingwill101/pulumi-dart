// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleOverrideActionWafregional {
  final String type;

  WebAclRuleOverrideActionWafregional({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleOverrideActionWafregional.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleOverrideActionWafregional(
      type: map['type'] as String,
    );
  }
}
