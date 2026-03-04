// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final pulumi.Input<String>? fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': ?fallbackBehavior};
  }

  factory RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementByteMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: (() {
        final guardedValue = map['fallbackBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
