// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_action_count_custom_request_handling_insert_header/web_acl_rule_action_count_custom_request_handling_insert_header.dart';

class WebAclRuleActionCountCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<WebAclRuleActionCountCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        WebAclRuleActionCountCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleActionCountCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleActionCountCustomRequestHandling(
      insertHeaders: Input.decodeList<
              WebAclRuleActionCountCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleActionCountCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
