// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment {
  /// How to handle requests with a URI fragment that is too large to inspect. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String?>? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] How to handle requests with a URI fragment that is too large to inspect. Valid values: `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: (() { final guardedValue = map['fallbackBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
