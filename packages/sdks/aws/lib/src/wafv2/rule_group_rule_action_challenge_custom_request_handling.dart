// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_challenge_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final pulumi.Input<List<RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [RuleGroupRuleActionChallengeCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  const RuleGroupRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleActionChallengeCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

