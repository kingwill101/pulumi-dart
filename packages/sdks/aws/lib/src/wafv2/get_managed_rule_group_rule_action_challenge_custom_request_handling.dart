// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_challenge_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionChallengeCustomRequestHandling {
  final pulumi.Input<List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionChallengeCustomRequestHandling].
  /// [insertHeaders] Required.
  GetManagedRuleGroupRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionChallengeCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

