// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_alternate_policy_spec.dart';
import 'google_cloud_orgpolicy_v2_policy_spec.dart';

/// The set of arguments for Policy.
class PolicyOrgpolicyV2Args {
  /// Deprecated.
  final pulumi.Input<GoogleCloudOrgpolicyV2AlternatePolicySpec>? alternate;

  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? dryRunSpec;

  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Basic information about the Organization Policy.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? spec;

  PolicyOrgpolicyV2Args({
    this.alternate,
    this.dryRunSpec,
    this.name,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternateValue = alternate;
    if (alternateValue != null) {
      map['alternate'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudOrgpolicyV2AlternatePolicySpec,
          Map<String, dynamic>>(alternateValue, (value) => value.toMap());
    }
    final dryRunSpecValue = dryRunSpec;
    if (dryRunSpecValue != null) {
      map['dryRunSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudOrgpolicyV2PolicySpec,
          Map<String, dynamic>>(dryRunSpecValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudOrgpolicyV2PolicySpec,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyOrgpolicyV2Args.fromMap(Map<String, dynamic> map) {
    return PolicyOrgpolicyV2Args(
      alternate: pulumi.Input.asOptionalInput<
          GoogleCloudOrgpolicyV2AlternatePolicySpec>(map['alternate']),
      dryRunSpec:
          pulumi.Input.asOptionalInput<GoogleCloudOrgpolicyV2PolicySpec>(
              map['dryRunSpec']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spec: pulumi.Input.asOptionalInput<GoogleCloudOrgpolicyV2PolicySpec>(
          map['spec']),
    );
  }
}
