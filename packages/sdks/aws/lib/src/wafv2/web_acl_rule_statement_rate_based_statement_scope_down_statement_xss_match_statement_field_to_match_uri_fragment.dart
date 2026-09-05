// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment {
  /// How to handle requests with a URI fragment that is too large to inspect. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String?>? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] How to handle requests with a URI fragment that is too large to inspect. Valid values: `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: (() { final guardedValue = map['fallbackBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
