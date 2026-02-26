// ignore_for_file: unused_element, unnecessary_cast

import '../authz_policy_http_rule_from_not_source_resource_iam_service_account/authz_policy_http_rule_from_not_source_resource_iam_service_account.dart';
import '../authz_policy_http_rule_from_not_source_resource_tag_value_id_set/authz_policy_http_rule_from_not_source_resource_tag_value_id_set.dart';

class AuthzPolicyHttpRuleFromNotSourceResource {
  /// An IAM service account to match against the source service account of the VM sending the request.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount?
      iamServiceAccount;

  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet? tagValueIdSet;

  AuthzPolicyHttpRuleFromNotSourceResource({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iamServiceAccountValue = iamServiceAccount;
    if (iamServiceAccountValue != null) {
      map['iamServiceAccount'] = iamServiceAccountValue.toMap();
    }
    final tagValueIdSetValue = tagValueIdSet;
    if (tagValueIdSetValue != null) {
      map['tagValueIdSet'] = tagValueIdSetValue.toMap();
    }
    return map;
  }

  factory AuthzPolicyHttpRuleFromNotSourceResource.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourceResource(
      iamServiceAccount: map['iamServiceAccount'] == null
          ? null
          : AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount.fromMap(
              (map['iamServiceAccount'] as Map).cast<String, dynamic>()),
      tagValueIdSet: map['tagValueIdSet'] == null
          ? null
          : AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet.fromMap(
              (map['tagValueIdSet'] as Map).cast<String, dynamic>()),
    );
  }
}
