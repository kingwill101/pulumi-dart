// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount {
  /// Custom handling for counted requests. See below.
  final pulumi.Input<
    WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling
  >?
  customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount].
  /// [customRequestHandling] Custom handling for counted requests. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount(
      customRequestHandling: (() {
        final guardedValue = map['customRequestHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
