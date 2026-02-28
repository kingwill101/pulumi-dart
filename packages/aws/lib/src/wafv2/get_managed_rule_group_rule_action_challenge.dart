// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_challenge_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionChallenge {
  final List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>
      customRequestHandlings;

  /// Creates a new [GetManagedRuleGroupRuleActionChallenge].
  /// [customRequestHandlings] Required.
  GetManagedRuleGroupRuleActionChallenge({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRequestHandlings'] = pulumi.Input.encodeList<
        GetManagedRuleGroupRuleActionChallengeCustomRequestHandling,
        Map<String, dynamic>>(customRequestHandlings, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionChallenge.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallenge(
      customRequestHandlings: pulumi.Input.decodeList<
              GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>(
          map['customRequestHandlings'],
          (value) => GetManagedRuleGroupRuleActionChallengeCustomRequestHandling
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
