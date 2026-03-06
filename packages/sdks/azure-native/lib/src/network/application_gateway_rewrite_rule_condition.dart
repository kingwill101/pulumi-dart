// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set of conditions in the Rewrite Rule in Application Gateway.
class ApplicationGatewayRewriteRuleCondition {
  /// Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  final pulumi.Input<bool>? ignoreCase;
  /// Setting this value as truth will force to check the negation of the condition given by the user.
  final pulumi.Input<bool>? negate;
  /// The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  final pulumi.Input<String>? pattern;
  /// The condition parameter of the RewriteRuleCondition.
  final pulumi.Input<String>? variable;

  /// Creates a new [ApplicationGatewayRewriteRuleCondition].
  /// [ignoreCase] Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  /// [negate] Setting this value as truth will force to check the negation of the condition given by the user.
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  /// [variable] The condition parameter of the RewriteRuleCondition.
  const ApplicationGatewayRewriteRuleCondition({
    this.ignoreCase,
    this.negate,
    this.pattern,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ?ignoreCase,
      'negate': ?negate,
      'pattern': ?pattern,
      'variable': ?variable,
    };
  }

  factory ApplicationGatewayRewriteRuleCondition.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleCondition(
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negate: (() { final guardedValue = map['negate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variable: (() { final guardedValue = map['variable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

