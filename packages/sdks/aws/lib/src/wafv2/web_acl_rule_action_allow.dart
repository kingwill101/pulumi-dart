// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow_custom_request_handling.dart';

class WebAclRuleActionAllow {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleActionAllowCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclRuleActionAllow].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleActionAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionAllowCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionAllow(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionAllowCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
