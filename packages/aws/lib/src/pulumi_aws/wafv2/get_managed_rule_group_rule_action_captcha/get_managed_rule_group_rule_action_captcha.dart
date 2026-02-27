// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_managed_rule_group_rule_action_captcha_custom_request_handling/get_managed_rule_group_rule_action_captcha_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionCaptcha {
  final List<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling>
      customRequestHandlings;

  GetManagedRuleGroupRuleActionCaptcha({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRequestHandlings'] = pulumi.Input.encodeList<
        GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling,
        Map<String, dynamic>>(customRequestHandlings, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionCaptcha.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptcha(
      customRequestHandlings: pulumi.Input.decodeList<
              GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling>(
          map['customRequestHandlings'],
          (value) =>
              GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
