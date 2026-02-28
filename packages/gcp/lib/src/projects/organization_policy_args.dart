// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_boolean_policy.dart';
import 'organization_policy_list_policy.dart';
import 'organization_policy_restore_policy.dart';

/// {@template pulumi_projects_organization_policy_organization_policy_args_doc}
/// The set of arguments for OrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_projects_organization_policy_organization_policy_args_doc}
class OrganizationPolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final pulumi.Input<OrganizationPolicyBooleanPolicy>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<OrganizationPolicyListPolicy>? listPolicy;

  /// The project id of the project to set the policy for.
  final pulumi.Input<String> project;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<OrganizationPolicyRestorePolicy>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [OrganizationPolicyArgs].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [project] The project id of the project to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [version] Version of the Policy. Default version is 0.
  OrganizationPolicyArgs({
    OrganizationPolicyBooleanPolicy? booleanPolicy,
    required String constraint,
    OrganizationPolicyListPolicy? listPolicy,
    required String project,
    OrganizationPolicyRestorePolicy? restorePolicy,
    int? version,
  })  : booleanPolicy =
            pulumi.Input.asOptionalInput<OrganizationPolicyBooleanPolicy>(
                booleanPolicy),
        constraint = pulumi.Input.asInput<String>(constraint),
        listPolicy = pulumi.Input.asOptionalInput<OrganizationPolicyListPolicy>(
            listPolicy),
        project = pulumi.Input.asInput<String>(project),
        restorePolicy =
            pulumi.Input.asOptionalInput<OrganizationPolicyRestorePolicy>(
                restorePolicy),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanPolicyValue = booleanPolicy;
    if (booleanPolicyValue != null) {
      map['booleanPolicy'] = pulumi.Input.mapOptionalInputValue<
          OrganizationPolicyBooleanPolicy,
          Map<String, dynamic>>(booleanPolicyValue, (value) => value.toMap());
    }
    map['constraint'] = constraint;
    final listPolicyValue = listPolicy;
    if (listPolicyValue != null) {
      map['listPolicy'] = pulumi.Input.mapOptionalInputValue<
          OrganizationPolicyListPolicy,
          Map<String, dynamic>>(listPolicyValue, (value) => value.toMap());
    }
    map['project'] = project;
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = pulumi.Input.mapOptionalInputValue<
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
      booleanPolicy: map['booleanPolicy'] == null
          ? null
          : OrganizationPolicyBooleanPolicy.fromMap(
              (map['booleanPolicy'] as Map).cast<String, dynamic>()),
      constraint: map['constraint'] as String,
      listPolicy: map['listPolicy'] == null
          ? null
          : OrganizationPolicyListPolicy.fromMap(
              (map['listPolicy'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      restorePolicy: map['restorePolicy'] == null
          ? null
          : OrganizationPolicyRestorePolicy.fromMap(
              (map['restorePolicy'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
