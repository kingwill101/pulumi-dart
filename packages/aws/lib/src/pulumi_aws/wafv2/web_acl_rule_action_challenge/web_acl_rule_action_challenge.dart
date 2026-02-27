// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_action_challenge_custom_request_handling/web_acl_rule_action_challenge_custom_request_handling.dart';

class WebAclRuleActionChallenge {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleActionChallengeCustomRequestHandling? customRequestHandling;

  WebAclRuleActionChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRequestHandlingValue = customRequestHandling;
    if (customRequestHandlingValue != null) {
      map['customRequestHandling'] = customRequestHandlingValue.toMap();
    }
    return map;
  }

  factory WebAclRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallenge(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleActionChallengeCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}
