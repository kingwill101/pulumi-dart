// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_rule_group_rule_action_block_custom_response/get_managed_rule_group_rule_action_block_custom_response.dart';

class GetManagedRuleGroupRuleActionBlock {
  final List<GetManagedRuleGroupRuleActionBlockCustomResponse> customResponses;

  GetManagedRuleGroupRuleActionBlock({
    required this.customResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customResponses'] = Input.encodeList<
        GetManagedRuleGroupRuleActionBlockCustomResponse,
        Map<String, dynamic>>(customResponses, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionBlock(
      customResponses:
          Input.decodeList<GetManagedRuleGroupRuleActionBlockCustomResponse>(
              map['customResponses'],
              (value) =>
                  GetManagedRuleGroupRuleActionBlockCustomResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
