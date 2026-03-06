// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow_custom_request_handling_insert_header.dart';

class WebAclRuleActionAllowCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final pulumi.Input<List<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [WebAclRuleActionAllowCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  const WebAclRuleActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionAllowCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => WebAclRuleActionAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

