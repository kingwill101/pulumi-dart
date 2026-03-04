// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock {
  /// Custom response for blocked requests. See below.
  final pulumi.Input<
    WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse
  >?
  customResponse;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock].
  /// [customResponse] Custom response for blocked requests. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse,
            Map<String, dynamic>
          >(customResponse, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock(
      customResponse: (() {
        final guardedValue = map['customResponse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
