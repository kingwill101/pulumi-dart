// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_challenge_custom_request_handling.dart';

class WebAclRuleActionChallenge {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleActionChallengeCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclRuleActionChallenge].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleActionChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionChallengeCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallenge(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionChallengeCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
