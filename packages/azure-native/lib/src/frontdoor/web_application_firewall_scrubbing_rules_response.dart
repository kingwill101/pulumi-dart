// ignore_for_file: unused_element, unnecessary_cast


/// Defines the contents of the log scrubbing rules.
class WebApplicationFirewallScrubbingRulesResponse {
  /// The variable to be scrubbed from the logs.
  final String matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  final String? selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  final String selectorMatchOperator;
  /// Defines the state of a log scrubbing rule. Default value is enabled.
  final String? state;

  /// Creates a new [WebApplicationFirewallScrubbingRulesResponse].
  /// [matchVariable] The variable to be scrubbed from the logs.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  /// [state] Defines the state of a log scrubbing rule. Default value is enabled.
  WebApplicationFirewallScrubbingRulesResponse({
    required this.matchVariable,
    this.selector,
    required this.selectorMatchOperator,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': selectorMatchOperator,
      'state': ?state,
    };
  }

  factory WebApplicationFirewallScrubbingRulesResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallScrubbingRulesResponse(
      matchVariable: map['matchVariable'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      selectorMatchOperator: map['selectorMatchOperator'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

