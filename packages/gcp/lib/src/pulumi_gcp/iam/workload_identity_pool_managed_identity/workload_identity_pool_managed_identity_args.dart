// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_managed_identity_attestation_rule/workload_identity_pool_managed_identity_attestation_rule.dart';

/// The set of arguments for WorkloadIdentityPoolManagedIdentity.
class WorkloadIdentityPoolManagedIdentityArgs {
  /// Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// defined under a managed identity, matching workloads may receive that identity. A maximum of
  /// 50 AttestationRules can be set.
  /// Structure is documented below.
  final Input<List<WorkloadIdentityPoolManagedIdentityAttestationRule>>?
      attestationRules;

  /// A description of the managed identity. Cannot exceed 256 characters.
  final Input<String>? description;

  /// Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// the identity, however existing credentials will still be accepted until they expire.
  final Input<bool>? disabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workloadIdentityPoolId;

  /// The ID to use for the managed identity. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final Input<String> workloadIdentityPoolManagedIdentityId;

  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  final Input<String> workloadIdentityPoolNamespaceId;

  WorkloadIdentityPoolManagedIdentityArgs({
    this.attestationRules,
    this.description,
    this.disabled,
    this.project,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolManagedIdentityId,
    required this.workloadIdentityPoolNamespaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationRulesValue = attestationRules;
    if (attestationRulesValue != null) {
      map['attestationRules'] = Input.mapOptionalInputValue<
              List<WorkloadIdentityPoolManagedIdentityAttestationRule>,
              List<Map<String, dynamic>>>(
          attestationRulesValue,
          (value) => Input.encodeList<
              WorkloadIdentityPoolManagedIdentityAttestationRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolManagedIdentityId'] =
        workloadIdentityPoolManagedIdentityId;
    map['workloadIdentityPoolNamespaceId'] = workloadIdentityPoolNamespaceId;
    return map;
  }

  factory WorkloadIdentityPoolManagedIdentityArgs.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolManagedIdentityArgs(
      attestationRules: Input.asOptionalInput<
              List<WorkloadIdentityPoolManagedIdentityAttestationRule>>(
          map['attestationRules']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolManagedIdentityId:
          Input.asInput<String>(map['workloadIdentityPoolManagedIdentityId']),
      workloadIdentityPoolNamespaceId:
          Input.asInput<String>(map['workloadIdentityPoolNamespaceId']),
    );
  }
}
