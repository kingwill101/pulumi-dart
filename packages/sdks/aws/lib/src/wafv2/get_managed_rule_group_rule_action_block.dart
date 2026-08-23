// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_block_custom_response.dart';

class GetManagedRuleGroupRuleActionBlock {
  /// Custom response for the blocked request. See `customResponse` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionBlockCustomResponse>> customResponses;

  /// Creates a new [GetManagedRuleGroupRuleActionBlock].
  /// [customResponses] Custom response for the blocked request. See `customResponse` Block for details.
  const GetManagedRuleGroupRuleActionBlock({
    required this.customResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponses': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionBlockCustomResponse>, List<Map<String, dynamic>>>(customResponses, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionBlockCustomResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionBlock(
      customResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionBlockCustomResponse>(map['customResponses']!, (value) => GetManagedRuleGroupRuleActionBlockCustomResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
