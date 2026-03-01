// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_boolean_policy.dart';
import 'policy_list_policy.dart';
import 'policy_restore_policy.dart';

/// {@template pulumi_organizations_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_organizations_policy_policy_args_doc}
class PolicyArgs {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  final pulumi.Input<PolicyBooleanPolicy>? booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  final pulumi.Input<String> constraint;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  final pulumi.Input<PolicyListPolicy>? listPolicy;

  /// The numeric ID of the organization to set the policy for.
  final pulumi.Input<String> orgId;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [`boolean_policy`, `list_policy`, `restore_policy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  final pulumi.Input<PolicyRestorePolicy>? restorePolicy;

  /// Version of the Policy. Default version is 0.
  final pulumi.Input<int>? version;

  /// Creates a new [PolicyArgs].
  /// [booleanPolicy] A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// [constraint] The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [listPolicy] A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  /// [orgId] The numeric ID of the organization to set the policy for.
  /// [restorePolicy] A restore policy is a constraint to restore the default policy. Structure is documented below.
  /// [version] Version of the Policy. Default version is 0.
  PolicyArgs({
    PolicyBooleanPolicy? booleanPolicy,
    required String constraint,
    PolicyListPolicy? listPolicy,
    required String orgId,
    PolicyRestorePolicy? restorePolicy,
    int? version,
  }) : booleanPolicy = pulumi.Input.asOptionalInput<PolicyBooleanPolicy>(
         booleanPolicy,
       ),
       constraint = pulumi.Input.asInput<String>(constraint),
       listPolicy = pulumi.Input.asOptionalInput<PolicyListPolicy>(listPolicy),
       orgId = pulumi.Input.asInput<String>(orgId),
       restorePolicy = pulumi.Input.asOptionalInput<PolicyRestorePolicy>(
         restorePolicy,
       ),
       version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyBooleanPolicy,
            Map<String, dynamic>
          >(booleanPolicy, (value) => value.toMap()),
      'constraint': constraint,
      'listPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyListPolicy,
            Map<String, dynamic>
          >(listPolicy, (value) => value.toMap()),
      'orgId': orgId,
      'restorePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyRestorePolicy,
            Map<String, dynamic>
          >(restorePolicy, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      booleanPolicy: map['booleanPolicy'] == null
          ? null
          : PolicyBooleanPolicy.fromMap(
              (map['booleanPolicy'] as Map).cast<String, dynamic>(),
            ),
      constraint: map['constraint'] as String,
      listPolicy: map['listPolicy'] == null
          ? null
          : PolicyListPolicy.fromMap(
              (map['listPolicy'] as Map).cast<String, dynamic>(),
            ),
      orgId: map['orgId'] as String,
      restorePolicy: map['restorePolicy'] == null
          ? null
          : PolicyRestorePolicy.fromMap(
              (map['restorePolicy'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
