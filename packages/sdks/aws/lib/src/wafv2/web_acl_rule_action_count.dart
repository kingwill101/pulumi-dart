// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_count_custom_request_handling.dart';

class WebAclRuleActionCount {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final pulumi.Input<WebAclRuleActionCountCustomRequestHandling>?
  customRequestHandling;

  /// Creates a new [WebAclRuleActionCount].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionCount({this.customRequestHandling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleActionCountCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionCount.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCount(
      customRequestHandling: (() {
        final guardedValue = map['customRequestHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleActionCountCustomRequestHandling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
