// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_captcha_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionCaptchaCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final pulumi.Input<List<RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [RuleGroupRuleActionCaptchaCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  RuleGroupRuleActionCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleActionCaptchaCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionCaptchaCustomRequestHandling(
      insertHeaders: (pulumi.Input.decodeList<RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

