// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleOverrideAction {
  /// Override the rule action setting to count (i.e., only count matches). Configured as an empty block `{}`.
  final Map<String, dynamic>? count;

  /// Don't override the rule action setting. Configured as an empty block `{}`.
  final Map<String, dynamic>? none;

  /// Creates a new [WebAclRuleOverrideAction].
  /// [count] Override the rule action setting to count (i.e., only count matches). Configured as an empty block `{}`.
  /// [none] Don't override the rule action setting. Configured as an empty block `{}`.
  WebAclRuleOverrideAction({
    this.count,
    this.none,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final noneValue = none;
    if (noneValue != null) {
      map['none'] = noneValue;
    }
    return map;
  }

  factory WebAclRuleOverrideAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleOverrideAction(
      count: map['count'] == null
          ? null
          : (map['count'] as Map).cast<String, dynamic>(),
      none: map['none'] == null
          ? null
          : (map['none'] as Map).cast<String, dynamic>(),
    );
  }
}
