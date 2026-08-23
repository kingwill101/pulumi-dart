// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_block_custom_response_response_header.dart';

class WebAclRuleActionBlockCustomResponse {
  /// Key of a custom response body defined in the Web ACL.
  final pulumi.Input<String>? customResponseBodyKey;
  /// HTTP status code to return (200-599).
  final pulumi.Input<int> responseCode;
  /// Custom headers to include in the response. See Response Header below.
  final pulumi.Input<List<WebAclRuleActionBlockCustomResponseResponseHeader>>? responseHeaders;

  /// Creates a new [WebAclRuleActionBlockCustomResponse].
  /// [customResponseBodyKey] Key of a custom response body defined in the Web ACL.
  /// [responseCode] HTTP status code to return (200-599).
  /// [responseHeaders] Custom headers to include in the response. See Response Header below.
  const WebAclRuleActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleActionBlockCustomResponseResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionBlockCustomResponseResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionBlockCustomResponse(
      customResponseBodyKey: (() { final guardedValue = map['customResponseBodyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseCode: pulumi.Input.fromValue(map['responseCode'] as int),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionBlockCustomResponseResponseHeader>(guardedValue, (value) => WebAclRuleActionBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
