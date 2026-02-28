// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action_challenge_custom_request_handling.dart';

class WebAclRuleActionChallenge {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleActionChallengeCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleActionChallenge].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallenge(
      customRequestHandling: map['customRequestHandling'] == null ? null : WebAclRuleActionChallengeCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

