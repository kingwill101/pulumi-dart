// ignore_for_file: unused_element, unnecessary_cast


/// Exclude variables from managed rule evaluation.
class ManagedRuleExclusion {
  /// The variable type to be excluded.
  final String matchVariable;
  /// Selector value for which elements in the collection this exclusion applies to.
  final String selector;
  /// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to.
  final String selectorMatchOperator;

  /// Creates a new [ManagedRuleExclusion].
  /// [matchVariable] The variable type to be excluded.
  /// [selector] Selector value for which elements in the collection this exclusion applies to.
  /// [selectorMatchOperator] Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to.
  ManagedRuleExclusion({
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'selector': selector,
      'selectorMatchOperator': selectorMatchOperator,
    };
  }

  factory ManagedRuleExclusion.fromMap(Map<String, dynamic> map) {
    return ManagedRuleExclusion(
      matchVariable: map['matchVariable'] as String,
      selector: map['selector'] as String,
      selectorMatchOperator: map['selectorMatchOperator'] as String,
    );
  }
}

