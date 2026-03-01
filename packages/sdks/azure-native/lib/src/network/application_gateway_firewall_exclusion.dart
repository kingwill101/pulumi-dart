// ignore_for_file: unused_element, unnecessary_cast


/// Allow to exclude some variable satisfy the condition for the WAF check.
class ApplicationGatewayFirewallExclusion {
  /// The variable to be excluded.
  final String matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  final String selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  final String selectorMatchOperator;

  /// Creates a new [ApplicationGatewayFirewallExclusion].
  /// [matchVariable] The variable to be excluded.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
  ApplicationGatewayFirewallExclusion({
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

  factory ApplicationGatewayFirewallExclusion.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFirewallExclusion(
      matchVariable: map['matchVariable'] as String,
      selector: map['selector'] as String,
      selectorMatchOperator: map['selectorMatchOperator'] as String,
    );
  }
}

