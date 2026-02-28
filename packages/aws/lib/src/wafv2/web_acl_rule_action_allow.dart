// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action_allow_custom_request_handling.dart';

class WebAclRuleActionAllow {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final WebAclRuleActionAllowCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleActionAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionAllow({
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

  factory WebAclRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionAllow(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleActionAllowCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}
