// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the contents of the log scrubbing rules.
class ProfileScrubbingRulesResponse {
  /// The variable to be scrubbed from the logs.
  final pulumi.Input<String> matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  final pulumi.Input<String>? selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  final pulumi.Input<String> selectorMatchOperator;
  /// Defines the state of a log scrubbing rule. Default value is enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [ProfileScrubbingRulesResponse].
  /// [matchVariable] The variable to be scrubbed from the logs.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  /// [state] Defines the state of a log scrubbing rule. Default value is enabled.
  ProfileScrubbingRulesResponse({
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

  factory ProfileScrubbingRulesResponse.fromMap(Map<String, dynamic> map) {
    return ProfileScrubbingRulesResponse(
      matchVariable: (map['matchVariable'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      selectorMatchOperator: (map['selectorMatchOperator'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

