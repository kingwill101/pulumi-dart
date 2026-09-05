// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody {
  /// How to handle requests with a body larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`. Defaults to `CONTINUE`.
  final pulumi.Input<String?>? oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody].
  /// [oversizeHandling] How to handle requests with a body larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`. Defaults to `CONTINUE`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody(
      oversizeHandling: (() { final guardedValue = map['oversizeHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
