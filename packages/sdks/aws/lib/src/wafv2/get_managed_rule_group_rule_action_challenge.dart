// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_challenge_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionChallenge {
  final pulumi.Input<List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>> customRequestHandlings;

  /// Creates a new [GetManagedRuleGroupRuleActionChallenge].
  /// [customRequestHandlings] Required.
  const GetManagedRuleGroupRuleActionChallenge({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandlings': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>, List<Map<String, dynamic>>>(customRequestHandlings, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallenge(
      customRequestHandlings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionChallengeCustomRequestHandling>(map['customRequestHandlings']!, (value) => GetManagedRuleGroupRuleActionChallengeCustomRequestHandling.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

