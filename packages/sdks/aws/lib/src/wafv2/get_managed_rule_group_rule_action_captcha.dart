// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_captcha_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionCaptcha {
  /// Custom handling for the counted request. See `customRequestHandling` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling>> customRequestHandlings;

  /// Creates a new [GetManagedRuleGroupRuleActionCaptcha].
  /// [customRequestHandlings] Custom handling for the counted request. See `customRequestHandling` Block for details.
  const GetManagedRuleGroupRuleActionCaptcha({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandlings': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling>, List<Map<String, dynamic>>>(customRequestHandlings, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionCaptcha.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptcha(
      customRequestHandlings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling>(map['customRequestHandlings']!, (value) => GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
