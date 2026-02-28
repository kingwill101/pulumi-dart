// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleAction {
  /// valid values are: `BLOCK`, `ALLOW`, or `COUNT`
  final String type;

  /// Creates a new [WebAclRuleAction].
  /// [type] valid values are: `BLOCK`, `ALLOW`, or `COUNT`
  WebAclRuleAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclRuleAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction(
      type: map['type'] as String,
    );
  }
}
