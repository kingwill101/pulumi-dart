// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_policy_boolean_policy/organization_policy_boolean_policy.dart';
import '../organization_policy_list_policy/organization_policy_list_policy.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy.dart';

/// The set of arguments for OrganizationPolicy.
class OrganizationPolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final Input<OrganizationPolicyBooleanPolicy>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final Input<String> constraint;

  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  final Input<String> folder;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It
  /// can also be used to allow or deny all values. Structure is documented below.
  final Input<OrganizationPolicyListPolicy>? listPolicy;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final Input<OrganizationPolicyRestorePolicy>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final Input<int>? version;

  OrganizationPolicyArgs({
    this.booleanPolicy,
    required this.constraint,
    required this.folder,
    this.listPolicy,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanPolicyValue = booleanPolicy;
    if (booleanPolicyValue != null) {
      map['booleanPolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyBooleanPolicy,
          Map<String, dynamic>>(booleanPolicyValue, (value) => value.toMap());
    }
    map['constraint'] = constraint;
    map['folder'] = folder;
    final listPolicyValue = listPolicy;
    if (listPolicyValue != null) {
      map['listPolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyListPolicy,
          Map<String, dynamic>>(listPolicyValue, (value) => value.toMap());
    }
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyRestorePolicy,
          Map<String, dynamic>>(restorePolicyValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory OrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyArgs(
      booleanPolicy: Input.asOptionalInput<OrganizationPolicyBooleanPolicy>(
          map['booleanPolicy']),
      constraint: Input.asInput<String>(map['constraint']),
      folder: Input.asInput<String>(map['folder']),
      listPolicy: Input.asOptionalInput<OrganizationPolicyListPolicy>(
          map['listPolicy']),
      restorePolicy: Input.asOptionalInput<OrganizationPolicyRestorePolicy>(
          map['restorePolicy']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
