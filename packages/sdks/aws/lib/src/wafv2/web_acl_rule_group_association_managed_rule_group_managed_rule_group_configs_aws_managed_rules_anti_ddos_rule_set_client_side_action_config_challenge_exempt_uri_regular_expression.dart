// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression {
  /// Regular expression string.
  final pulumi.Input<String?>? regexString;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression].
  /// [regexString] Regular expression string.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression({
    this.regexString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexString': ?regexString,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression(
      regexString: (() { final guardedValue = map['regexString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
