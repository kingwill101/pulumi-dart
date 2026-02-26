// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_rule_group_rule_action_challenge_custom_request_handling_insert_header/get_managed_rule_group_rule_action_challenge_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionChallengeCustomRequestHandling {
  final List<
          GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>
      insertHeaders;

  GetManagedRuleGroupRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallengeCustomRequestHandling(
      insertHeaders: Input.decodeList<
              GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
