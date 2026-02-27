// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleActionWafregional {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for `action` are `ALLOW`, `BLOCK` or `COUNT`. Valid values for `override_action` are `COUNT` and `NONE`.
  final String type;

  WebAclRuleActionWafregional({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleActionWafregional.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionWafregional(
      type: map['type'] as String,
    );
  }
}
