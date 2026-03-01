// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_block_custom_response_response_header.dart';

class RuleGroupRuleActionBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  final String? customResponseBodyKey;
  /// The HTTP status code to return to the client.
  final int responseCode;
  /// The `response_header` blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionBlockCustomResponseResponseHeader>? responseHeaders;

  /// Creates a new [RuleGroupRuleActionBlockCustomResponse].
  /// [customResponseBodyKey] References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  /// [responseCode] The HTTP status code to return to the client.
  /// [responseHeaders] The `response_header` blocks used to define the HTTP response headers added to the response. See Custom HTTP Header below for details.
  RuleGroupRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?responseHeaders == null ? null : pulumi.Input.encodeList<RuleGroupRuleActionBlockCustomResponseResponseHeader, Map<String, dynamic>>(responseHeaders!, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null ? null : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleActionBlockCustomResponseResponseHeader>(map['responseHeaders'], (value) => RuleGroupRuleActionBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

