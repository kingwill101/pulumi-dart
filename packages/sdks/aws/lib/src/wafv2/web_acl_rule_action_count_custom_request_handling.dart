// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_count_custom_request_handling_insert_header.dart';

class WebAclRuleActionCountCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final pulumi.Input<List<WebAclRuleActionCountCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [WebAclRuleActionCountCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  WebAclRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<WebAclRuleActionCountCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionCountCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionCountCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCountCustomRequestHandling(
      insertHeaders: (pulumi.Input.decodeList<WebAclRuleActionCountCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => WebAclRuleActionCountCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

