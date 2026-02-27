// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_action_challenge_custom_request_handling_insert_header/web_acl_rule_action_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleActionChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        WebAclRuleActionChallengeCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleActionChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleActionChallengeCustomRequestHandling(
      insertHeaders: Input.decodeList<
              WebAclRuleActionChallengeCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) => WebAclRuleActionChallengeCustomRequestHandlingInsertHeader
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
