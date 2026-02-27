// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_dry_run_spec/policy_dry_run_spec.dart';
import '../policy_spec/policy_spec.dart';

/// The set of arguments for Policy.
class PolicyOrgpolicyArgs {
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

  PolicyOrgpolicyArgs({
    this.dryRunSpec,
    this.name,
    required this.parent,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dryRunSpecValue = dryRunSpec;
    if (dryRunSpecValue != null) {
      map['dryRunSpec'] = pulumi.Input.mapOptionalInputValue<PolicyDryRunSpec,
          Map<String, dynamic>>(dryRunSpecValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          pulumi.Input.mapOptionalInputValue<PolicySpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyOrgpolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyOrgpolicyArgs(
      dryRunSpec:
          pulumi.Input.asOptionalInput<PolicyDryRunSpec>(map['dryRunSpec']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      spec: pulumi.Input.asOptionalInput<PolicySpec>(map['spec']),
    );
  }
}
