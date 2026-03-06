// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleActionChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final pulumi.Input<List<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [WebAclRuleActionChallengeCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  const WebAclRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleActionChallengeCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => WebAclRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

