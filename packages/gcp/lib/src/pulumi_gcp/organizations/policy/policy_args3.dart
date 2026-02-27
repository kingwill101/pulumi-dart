// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_boolean_policy/policy_boolean_policy.dart';
import '../policy_list_policy/policy_list_policy.dart';
import '../policy_restore_policy/policy_restore_policy.dart';

/// The set of arguments for Policy.
class PolicyArgs3 {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  final Input<PolicyBooleanPolicy>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final Input<String> constraint;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final Input<PolicyListPolicy>? listPolicy;

  /// The numeric ID of the organization to set the policy for.
  final Input<String> orgId;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final Input<PolicyRestorePolicy>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final Input<int>? version;

  PolicyArgs3({
    this.booleanPolicy,
    required this.constraint,
    this.listPolicy,
    required this.orgId,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanPolicyValue = booleanPolicy;
    if (booleanPolicyValue != null) {
      map['booleanPolicy'] = Input.mapOptionalInputValue<PolicyBooleanPolicy,
          Map<String, dynamic>>(booleanPolicyValue, (value) => value.toMap());
    }
    map['constraint'] = constraint;
    final listPolicyValue = listPolicy;
    if (listPolicyValue != null) {
      map['listPolicy'] =
          Input.mapOptionalInputValue<PolicyListPolicy, Map<String, dynamic>>(
              listPolicyValue, (value) => value.toMap());
    }
    map['orgId'] = orgId;
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = Input.mapOptionalInputValue<PolicyRestorePolicy,
          Map<String, dynamic>>(restorePolicyValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PolicyArgs3.fromMap(Map<String, dynamic> map) {
    return PolicyArgs3(
      booleanPolicy:
          Input.asOptionalInput<PolicyBooleanPolicy>(map['booleanPolicy']),
      constraint: Input.asInput<String>(map['constraint']),
      listPolicy: Input.asOptionalInput<PolicyListPolicy>(map['listPolicy']),
      orgId: Input.asInput<String>(map['orgId']),
      restorePolicy:
          Input.asOptionalInput<PolicyRestorePolicy>(map['restorePolicy']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
