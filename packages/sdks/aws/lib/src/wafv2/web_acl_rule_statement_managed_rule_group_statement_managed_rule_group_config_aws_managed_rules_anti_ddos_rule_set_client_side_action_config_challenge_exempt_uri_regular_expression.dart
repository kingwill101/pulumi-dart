// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression {
  /// Regular expression pattern to match against the web request component.
  final pulumi.Input<String?>? regexString;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression].
  /// [regexString] Regular expression pattern to match against the web request component.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression({
    this.regexString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexString': ?regexString,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression(
      regexString: (() { final guardedValue = map['regexString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
