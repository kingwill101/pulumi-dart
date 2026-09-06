// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the contents of the log scrubbing rules.
class WebApplicationFirewallScrubbingRules {
  /// The variable to be scrubbed from the logs.
  final pulumi.Input<dynamic> matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  final pulumi.Input<String?>? selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  final pulumi.Input<dynamic> selectorMatchOperator;
  /// Defines the state of a log scrubbing rule. Default value is enabled.
  final pulumi.Input<dynamic>? state;

  /// Creates a new [WebApplicationFirewallScrubbingRules].
  /// [matchVariable] The variable to be scrubbed from the logs.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  /// [state] Defines the state of a log scrubbing rule. Default value is enabled.
  const WebApplicationFirewallScrubbingRules({
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

  factory WebApplicationFirewallScrubbingRules.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallScrubbingRules(
      matchVariable: pulumi.Input.fromValue(map['matchVariable']),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectorMatchOperator: pulumi.Input.fromValue(map['selectorMatchOperator']),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
