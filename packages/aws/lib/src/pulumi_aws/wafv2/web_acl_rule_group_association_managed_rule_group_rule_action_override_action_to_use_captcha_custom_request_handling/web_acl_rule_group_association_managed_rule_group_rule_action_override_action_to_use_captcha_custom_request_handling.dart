// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_captcha_custom_request_handling_insert_header/web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_captcha_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader>?
      insertHeaders;

  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insertHeadersValue = insertHeaders;
    if (insertHeadersValue != null) {
      map['insertHeaders'] = pulumi.Input.encodeList<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader,
          Map<String, dynamic>>(insertHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader>(
              map['insertHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
