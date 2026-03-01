// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyManagedRuleOverrideRuleExclusion {
  /// The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  final String matchVariable;
  /// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  final String operator;
  /// Selector for the value in the `match_variable` attribute this exclusion applies to.
  final String selector;

  /// Creates a new [FirewallPolicyManagedRuleOverrideRuleExclusion].
  /// [matchVariable] The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  /// [operator] Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  /// [selector] Selector for the value in the `match_variable` attribute this exclusion applies to.
  FirewallPolicyManagedRuleOverrideRuleExclusion({
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

  factory FirewallPolicyManagedRuleOverrideRuleExclusion.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRuleOverrideRuleExclusion(
      matchVariable: map['matchVariable'] as String,
      operator: map['operator'] as String,
      selector: map['selector'] as String,
    );
  }
}

