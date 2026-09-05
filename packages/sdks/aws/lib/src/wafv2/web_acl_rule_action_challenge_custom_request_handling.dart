// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleActionChallengeCustomRequestHandling {
  /// Custom headers to insert into the request. See Insert Header below.
  final pulumi.Input<List<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>?>? insertHeaders;

  /// Creates a new [WebAclRuleActionChallengeCustomRequestHandling].
  /// [insertHeaders] Custom headers to insert into the request. See Insert Header below.
  const WebAclRuleActionChallengeCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionChallengeCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallengeCustomRequestHandling(
      insertHeaders: (() { final guardedValue = map['insertHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>(guardedValue, (value) => WebAclRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
