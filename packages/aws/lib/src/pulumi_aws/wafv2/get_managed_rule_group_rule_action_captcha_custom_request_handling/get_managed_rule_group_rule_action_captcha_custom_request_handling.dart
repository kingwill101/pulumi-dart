// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_rule_group_rule_action_captcha_custom_request_handling_insert_header/get_managed_rule_group_rule_action_captcha_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling {
  final List<
          GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>
      insertHeaders;

  GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling(
      insertHeaders: Input.decodeList<
              GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
