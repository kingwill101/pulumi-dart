// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleOverrideAction {
  final String type;

  /// Creates a new [WebAclRuleOverrideAction].
  /// [type] Required.
  WebAclRuleOverrideAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleOverrideAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleOverrideAction(
      type: map['type'] as String,
    );
  }
}
