// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_policy_boolean_policy/organization_policy_boolean_policy2.dart';
import '../organization_policy_list_policy/organization_policy_list_policy2.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy2.dart';

/// The set of arguments for OrganizationPolicy.
class OrganizationPolicyArgs2 {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  final Input<OrganizationPolicyBooleanPolicy2>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final Input<String> constraint;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final Input<OrganizationPolicyListPolicy2>? listPolicy;

  /// The project id of the project to set the policy for.
  final Input<String> project;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [<span pulumi-lang-nodejs="`booleanPolicy`" pulumi-lang-dotnet="`BooleanPolicy`" pulumi-lang-go="`booleanPolicy`" pulumi-lang-python="`boolean_policy`" pulumi-lang-yaml="`booleanPolicy`" pulumi-lang-java="`booleanPolicy`">`boolean_policy`</span>, <span pulumi-lang-nodejs="`listPolicy`" pulumi-lang-dotnet="`ListPolicy`" pulumi-lang-go="`listPolicy`" pulumi-lang-python="`list_policy`" pulumi-lang-yaml="`listPolicy`" pulumi-lang-java="`listPolicy`">`list_policy`</span>, <span pulumi-lang-nodejs="`restorePolicy`" pulumi-lang-dotnet="`RestorePolicy`" pulumi-lang-go="`restorePolicy`" pulumi-lang-python="`restore_policy`" pulumi-lang-yaml="`restorePolicy`" pulumi-lang-java="`restorePolicy`">`restore_policy`</span>] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final Input<OrganizationPolicyRestorePolicy2>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final Input<int>? version;

  OrganizationPolicyArgs2({
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
      map['booleanPolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyBooleanPolicy2,
          Map<String, dynamic>>(booleanPolicyValue, (value) => value.toMap());
    }
    map['constraint'] = constraint;
    final listPolicyValue = listPolicy;
    if (listPolicyValue != null) {
      map['listPolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyListPolicy2,
          Map<String, dynamic>>(listPolicyValue, (value) => value.toMap());
    }
    map['project'] = project;
    final restorePolicyValue = restorePolicy;
    if (restorePolicyValue != null) {
      map['restorePolicy'] = Input.mapOptionalInputValue<
          OrganizationPolicyRestorePolicy2,
          Map<String, dynamic>>(restorePolicyValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory OrganizationPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyArgs2(
      booleanPolicy: Input.asOptionalInput<OrganizationPolicyBooleanPolicy2>(
          map['booleanPolicy']),
      constraint: Input.asInput<String>(map['constraint']),
      listPolicy: Input.asOptionalInput<OrganizationPolicyListPolicy2>(
          map['listPolicy']),
      project: Input.asInput<String>(map['project']),
      restorePolicy: Input.asOptionalInput<OrganizationPolicyRestorePolicy2>(
          map['restorePolicy']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
