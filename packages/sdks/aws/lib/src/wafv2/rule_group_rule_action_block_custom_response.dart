// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_block_custom_response_response_header.dart';

class RuleGroupRuleActionBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `customResponseBody` block of this resource.
  final pulumi.Input<String>? customResponseBodyKey;
  /// The HTTP status code to return to the client.
  final pulumi.Input<int> responseCode;
  /// The `responseHeader` blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.
  final pulumi.Input<List<RuleGroupRuleActionBlockCustomResponseResponseHeader>>? responseHeaders;

  /// Creates a new [RuleGroupRuleActionBlockCustomResponse].
  /// [customResponseBodyKey] References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `customResponseBody` block of this resource.
  /// [responseCode] The HTTP status code to return to the client.
  /// [responseHeaders] The `responseHeader` blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.
  const RuleGroupRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleActionBlockCustomResponseResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<RuleGroupRuleActionBlockCustomResponseResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleActionBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionBlockCustomResponse(
      customResponseBodyKey: (() { final guardedValue = map['customResponseBodyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseCode: pulumi.Input.fromValue(map['responseCode'] as int),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleActionBlockCustomResponseResponseHeader>(guardedValue, (value) => RuleGroupRuleActionBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
