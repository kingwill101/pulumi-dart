// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionAllow {
  final List<GetManagedRuleGroupRuleActionAllowCustomRequestHandling>
  customRequestHandlings;

  /// Creates a new [GetManagedRuleGroupRuleActionAllow].
  /// [customRequestHandlings] Required.
  GetManagedRuleGroupRuleActionAllow({required this.customRequestHandlings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandlings':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionAllowCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandlings, (value) => value.toMap()),
    };
  }

  factory GetManagedRuleGroupRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionAllow(
      customRequestHandlings:
          pulumi.Input.decodeList<
            GetManagedRuleGroupRuleActionAllowCustomRequestHandling
          >(
            map['customRequestHandlings'],
            (value) =>
                GetManagedRuleGroupRuleActionAllowCustomRequestHandling.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
