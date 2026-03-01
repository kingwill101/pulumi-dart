// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_dry_run_spec.dart';
import 'policy_spec.dart';

/// {@template pulumi_orgpolicy_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_policy_policy_args_doc}
class PolicyArgs {
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// Structure is documented below.
  final pulumi.Input<PolicyDryRunSpec>? dryRunSpec;

  /// Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String>? name;

  /// The parent of the resource.
  final pulumi.Input<String> parent;

  /// Basic information about the Organization Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicySpec>? spec;

  /// Creates a new [PolicyArgs].
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [name] Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [parent] The parent of the resource.
  /// [spec] Basic information about the Organization Policy.
  PolicyArgs({
    PolicyDryRunSpec? dryRunSpec,
    String? name,
    required String parent,
    PolicySpec? spec,
  }) : dryRunSpec = pulumi.Input.asOptionalInput<PolicyDryRunSpec>(dryRunSpec),
       name = pulumi.Input.asOptionalInput<String>(name),
       parent = pulumi.Input.asInput<String>(parent),
       spec = pulumi.Input.asOptionalInput<PolicySpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRunSpec':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyDryRunSpec,
            Map<String, dynamic>
          >(dryRunSpec, (value) => value.toMap()),
      'name': ?name,
      'parent': parent,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<PolicySpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      dryRunSpec: map['dryRunSpec'] == null
          ? null
          : PolicyDryRunSpec.fromMap(
              (map['dryRunSpec'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] as String,
      spec: map['spec'] == null
          ? null
          : PolicySpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
