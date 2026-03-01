// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyManagedRuleOverrideExclusion {
  /// The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  final String matchVariable;
  /// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  final String operator;
  /// Selector for the value in the `match_variable` attribute this exclusion applies to.
  final String selector;

  /// Creates a new [FirewallPolicyManagedRuleOverrideExclusion].
  /// [matchVariable] The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  /// [operator] Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  /// [selector] Selector for the value in the `match_variable` attribute this exclusion applies to.
  FirewallPolicyManagedRuleOverrideExclusion({
    required this.matchVariable,
    required this.operator,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'operator': operator,
      'selector': selector,
    };
  }

  factory FirewallPolicyManagedRuleOverrideExclusion.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRuleOverrideExclusion(
      matchVariable: map['matchVariable'] as String,
      operator: map['operator'] as String,
      selector: map['selector'] as String,
    );
  }
}

