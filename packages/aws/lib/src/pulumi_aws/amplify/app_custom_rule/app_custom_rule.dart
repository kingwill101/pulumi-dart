// ignore_for_file: unused_element, unnecessary_cast

class AppCustomRule {
  /// Condition for a URL rewrite or redirect rule, such as a country code.
  final String? condition;

  /// Source pattern for a URL rewrite or redirect rule.
  final String source;

  /// Status code for a URL rewrite or redirect rule. Valid values: <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>, <span pulumi-lang-nodejs="`301`" pulumi-lang-dotnet="`301`" pulumi-lang-go="`301`" pulumi-lang-python="`301`" pulumi-lang-yaml="`301`" pulumi-lang-java="`301`">`301`</span>, <span pulumi-lang-nodejs="`302`" pulumi-lang-dotnet="`302`" pulumi-lang-go="`302`" pulumi-lang-python="`302`" pulumi-lang-yaml="`302`" pulumi-lang-java="`302`">`302`</span>, <span pulumi-lang-nodejs="`404`" pulumi-lang-dotnet="`404`" pulumi-lang-go="`404`" pulumi-lang-python="`404`" pulumi-lang-yaml="`404`" pulumi-lang-java="`404`">`404`</span>, `404-200`.
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
