// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_policy_boolean_policy/organization_policy_boolean_policy_projects.dart';
import '../organization_policy_list_policy/organization_policy_list_policy_projects.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy_projects.dart';

/// The set of arguments for OrganizationPolicy.
class OrganizationPolicyProjectsArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final pulumi.Input<OrganizationPolicyBooleanPolicyProjects>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<OrganizationPolicyListPolicyProjects>? listPolicy;

  /// The project id of the project to set the policy for.
  final pulumi.Input<String> project;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<OrganizationPolicyRestorePolicyProjects>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  OrganizationPolicyProjectsArgs({
    this.booleanPolicy,
    required this.constraint,
    this.listPolicy,
    required this.project,
    this.restorePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanPolicyValue = booleanPolicy;
    if (booleanPolicyValue != null) {
      map['booleanPolicy'] = pulumi.Input.mapOptionalInputValue<
          OrganizationPolicyBooleanPolicyProjects,
          Map<String, dynamic>>(booleanPolicyValue, (value) => value.toMap());
    }
    map['constraint'] = constraint;
    final listPolicyValue = listPolicy;
    if (listPolicyValue != null) {
      map['listPolicy'] = pulumi.Input.mapOptionalInputValue<
          OrganizationPolicyListPolicyProjects,
          Map<String, dynamic>>(listPolicyValue, (value) => value.toMap());
    }
    map['project'] = project;
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = pulumi.Input.mapOptionalInputValue<
          OrganizationPolicyRestorePolicyProjects,
          Map<String, dynamic>>(restorePolicyValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory OrganizationPolicyProjectsArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyProjectsArgs(
      booleanPolicy:
          pulumi.Input.asOptionalInput<OrganizationPolicyBooleanPolicyProjects>(
              map['booleanPolicy']),
      constraint: pulumi.Input.asInput<String>(map['constraint']),
      listPolicy:
          pulumi.Input.asOptionalInput<OrganizationPolicyListPolicyProjects>(
              map['listPolicy']),
      project: pulumi.Input.asInput<String>(map['project']),
      restorePolicy:
          pulumi.Input.asOptionalInput<OrganizationPolicyRestorePolicyProjects>(
              map['restorePolicy']),
      version: pulumi.Input.asOptionalInput<int>(map['version']),
    );
  }
}
