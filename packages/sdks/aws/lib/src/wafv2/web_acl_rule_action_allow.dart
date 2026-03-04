// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow_custom_request_handling.dart';

class WebAclRuleActionAllow {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final pulumi.Input<WebAclRuleActionAllowCustomRequestHandling>?
  customRequestHandling;

  /// Creates a new [WebAclRuleActionAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionAllow({this.customRequestHandling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleActionAllowCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionAllow(
      customRequestHandling: (() {
        final guardedValue = map['customRequestHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleActionAllowCustomRequestHandling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
