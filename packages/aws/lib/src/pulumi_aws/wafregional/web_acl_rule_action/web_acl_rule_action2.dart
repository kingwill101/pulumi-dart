// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleAction2 {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for `action` are `ALLOW`, `BLOCK` or `COUNT`. Valid values for `override_action` are `COUNT` and `NONE`.
  final String type;

  WebAclRuleAction2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleAction2.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction2(
      type: map['type'] as String,
    );
  }
}
