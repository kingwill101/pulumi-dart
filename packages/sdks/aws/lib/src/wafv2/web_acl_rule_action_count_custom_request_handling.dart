// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_count_custom_request_handling_insert_header.dart';

class WebAclRuleActionCountCustomRequestHandling {
  /// Custom headers to insert into the request. See Insert Header below.
  final pulumi.Input<List<WebAclRuleActionCountCustomRequestHandlingInsertHeader>?>? insertHeaders;

  /// Creates a new [WebAclRuleActionCountCustomRequestHandling].
  /// [insertHeaders] Custom headers to insert into the request. See Insert Header below.
  const WebAclRuleActionCountCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleActionCountCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionCountCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionCountCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionCountCustomRequestHandling(
      insertHeaders: (() { final guardedValue = map['insertHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionCountCustomRequestHandlingInsertHeader>(guardedValue, (value) => WebAclRuleActionCountCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
