// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_rule_group_rule_action_challenge_custom_request_handling/get_managed_rule_group_rule_action_challenge_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionChallenge {
  final List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>
      customRequestHandlings;

  GetManagedRuleGroupRuleActionChallenge({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRequestHandlings'] = Input.encodeList<
        GetManagedRuleGroupRuleActionChallengeCustomRequestHandling,
        Map<String, dynamic>>(customRequestHandlings, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionChallenge.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallenge(
      customRequestHandlings: Input.decodeList<
              GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>(
          map['customRequestHandlings'],
          (value) => GetManagedRuleGroupRuleActionChallengeCustomRequestHandling
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
