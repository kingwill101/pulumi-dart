// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow_custom_request_handling_insert_header.dart';

class WebAclRuleActionAllowCustomRequestHandling {
  /// Custom headers to insert into the request. See Insert Header below.
  final pulumi.Input<List<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>?>? insertHeaders;

  /// Creates a new [WebAclRuleActionAllowCustomRequestHandling].
  /// [insertHeaders] Custom headers to insert into the request. See Insert Header below.
  const WebAclRuleActionAllowCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionAllowCustomRequestHandling(
      insertHeaders: (() { final guardedValue = map['insertHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>(guardedValue, (value) => WebAclRuleActionAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
