// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleAction {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for `action` are `ALLOW`, `BLOCK` or `COUNT`. Valid values for `override_action` are `COUNT` and `NONE`.
  final String type;

  /// Creates a new [WebAclRuleAction].
  /// [type] Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for `action` are `ALLOW`, `BLOCK` or `COUNT`. Valid values for `override_action` are `COUNT` and `NONE`.
  WebAclRuleAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WebAclRuleAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction(
      type: map['type'] as String,
    );
  }
}

