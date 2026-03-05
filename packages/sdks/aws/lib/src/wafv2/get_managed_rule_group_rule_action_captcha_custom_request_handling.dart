// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_captcha_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling {
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling].
  /// [insertHeaders] Required.
  GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptchaCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

