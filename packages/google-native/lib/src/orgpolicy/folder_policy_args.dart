// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_alternate_policy_spec.dart';
import 'google_cloud_orgpolicy_v2_policy_spec.dart';

/// {@template pulumi_orgpolicy_v2_folder_policy_args_doc}
/// The set of arguments for FolderPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_folder_policy_args_doc}
class FolderPolicyArgs {
  /// Deprecated.
  final pulumi.Input<GoogleCloudOrgpolicyV2AlternatePolicySpec>? alternate;

  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? dryRunSpec;
  final pulumi.Input<String> folderId;

  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String>? name;

  /// Basic information about the Organization Policy.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? spec;

  /// Creates a new [FolderPolicyArgs].
  /// [alternate] Deprecated.
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [folderId] Required.
  /// [name] Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [spec] Basic information about the Organization Policy.
  FolderPolicyArgs({
    GoogleCloudOrgpolicyV2AlternatePolicySpec? alternate,
    GoogleCloudOrgpolicyV2PolicySpec? dryRunSpec,
    required String folderId,
    String? name,
    GoogleCloudOrgpolicyV2PolicySpec? spec,
  })  : alternate = pulumi.Input.asOptionalInput<
            GoogleCloudOrgpolicyV2AlternatePolicySpec>(alternate),
        dryRunSpec =
            pulumi.Input.asOptionalInput<GoogleCloudOrgpolicyV2PolicySpec>(
                dryRunSpec),
        folderId = pulumi.Input.asInput<String>(folderId),
        name = pulumi.Input.asOptionalInput<String>(name),
        spec = pulumi.Input.asOptionalInput<GoogleCloudOrgpolicyV2PolicySpec>(
            spec);

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
    map['folderId'] = folderId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudOrgpolicyV2PolicySpec,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    return map;
  }

  factory FolderPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FolderPolicyArgs(
      alternate: map['alternate'] == null
          ? null
          : GoogleCloudOrgpolicyV2AlternatePolicySpec.fromMap(
              (map['alternate'] as Map).cast<String, dynamic>()),
      dryRunSpec: map['dryRunSpec'] == null
          ? null
          : GoogleCloudOrgpolicyV2PolicySpec.fromMap(
              (map['dryRunSpec'] as Map).cast<String, dynamic>()),
      folderId: map['folderId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      spec: map['spec'] == null
          ? null
          : GoogleCloudOrgpolicyV2PolicySpec.fromMap(
              (map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
