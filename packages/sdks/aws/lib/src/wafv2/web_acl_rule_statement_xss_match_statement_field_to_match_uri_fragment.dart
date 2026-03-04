// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementXssMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final pulumi.Input<String>? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementXssMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  WebAclRuleStatementXssMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': ?fallbackBehavior};
  }

  factory WebAclRuleStatementXssMatchStatementFieldToMatchUriFragment.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementXssMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: (() {
        final guardedValue = map['fallbackBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
