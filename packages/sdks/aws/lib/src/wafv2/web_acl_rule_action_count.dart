// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_count_custom_request_handling.dart';

class WebAclRuleActionCount {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final pulumi.Input<WebAclRuleActionCountCustomRequestHandling>? customRequestHandling;

  /// Creates a new [WebAclRuleActionCount].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleActionCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionCountCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionCount.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCount(
      customRequestHandling: map['customRequestHandling'] == null ? null : ((WebAclRuleActionCountCustomRequestHandling.fromMap((map['customRequestHandling']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

