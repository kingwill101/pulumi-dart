// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_count_custom_request_handling.dart';

class WebAclRuleActionCount {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleActionCountCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclRuleActionCount].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleActionCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionCountCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionCount.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCount(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionCountCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
