// ignore_for_file: unused_element, unnecessary_cast

class AppCustomRule {
  /// Condition for a URL rewrite or redirect rule, such as a country code.
  final String? condition;

  /// Source pattern for a URL rewrite or redirect rule.
  final String source;

  /// Status code for a URL rewrite or redirect rule. Valid values: `200`, `301`, `302`, `404`, `404-200`.
  final String? status;

  /// Target pattern for a URL rewrite or redirect rule.
  final String target;

  AppCustomRule({
    this.condition,
    required this.source,
    this.status,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    map['source'] = source;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['target'] = target;
    return map;
  }

  factory AppCustomRule.fromMap(Map<String, dynamic> map) {
    return AppCustomRule(
      condition: map['condition'] == null ? null : map['condition'] as String,
      source: map['source'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      target: map['target'] as String,
    );
  }
}
