// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_action_block_custom_response_response_header/rule_group_rule_action_block_custom_response_response_header.dart';

class RuleGroupRuleActionBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  final String? customResponseBodyKey;

  /// The HTTP status code to return to the client.
  final int responseCode;

  /// The `response_header` blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionBlockCustomResponseResponseHeader>?
      responseHeaders;

  RuleGroupRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customResponseBodyKeyValue = customResponseBodyKey;
    if (customResponseBodyKeyValue != null) {
      map['customResponseBodyKey'] = customResponseBodyKeyValue;
    }
    map['responseCode'] = responseCode;
    final responseHeadersValue = responseHeaders;
    if (responseHeadersValue != null) {
      map['responseHeaders'] = Input.encodeList<
          RuleGroupRuleActionBlockCustomResponseResponseHeader,
          Map<String, dynamic>>(responseHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuleGroupRuleActionBlockCustomResponse.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null
          ? null
          : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null
          ? null
          : Input.decodeList<
                  RuleGroupRuleActionBlockCustomResponseResponseHeader>(
              map['responseHeaders'],
              (value) =>
                  RuleGroupRuleActionBlockCustomResponseResponseHeader.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
