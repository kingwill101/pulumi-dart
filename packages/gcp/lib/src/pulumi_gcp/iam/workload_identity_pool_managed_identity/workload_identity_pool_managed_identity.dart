import 'package:pulumi/pulumi.dart' as pulumi;
import '../workload_identity_pool_managed_identity_attestation_rule/workload_identity_pool_managed_identity_attestation_rule.dart';
import 'workload_identity_pool_managed_identity_args.dart';

/// Represents a managed identity for a workload identity pool namespace.
///
/// To get more information about WorkloadIdentityPoolManagedIdentity, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.namespaces.managedIdentities)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Managed Identity Basic
///
///
///
/// ### Iam Workload Identity Pool Managed Identity Full
///
///
///
///
/// ## Import
///
/// WorkloadIdentityPoolManagedIdentity can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}/managedIdentities/{{workload_identity_pool_managed_identity_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolManagedIdentity can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}/managedIdentities/{{workload_identity_pool_managed_identity_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity default {{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}/{{workload_identity_pool_managed_identity_id}}
/// ```
class WorkloadIdentityPoolManagedIdentity extends pulumi.CustomResource {
  /// Defines which workloads can receive an identity within a pool. When an AttestationRule is
  /// defined under a managed identity, matching workloads may receive that identity. A maximum of
  /// 50 AttestationRules can be set.
  /// Structure is documented below.
  late final pulumi
      .Output<List<WorkloadIdentityPoolManagedIdentityAttestationRule>?>
      attestationRules;

  /// A description of the managed identity. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
  /// the identity, however existing credentials will still be accepted until they expire.
  late final pulumi.Output<bool?> disabled;

  /// The resource name of the managed identity as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}/managedIdentities/{workload_identity_pool_managed_identity_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The current state of the managed identity.
  /// * `ACTIVE`: The managed identity is active.
  /// * `DELETED`: The managed identity is soft-deleted. Soft-deleted managed identities are
  /// permanently deleted after approximately 30 days. You can restore a soft-deleted managed
  /// identity using UndeleteWorkloadIdentityPoolManagedIdentity. You cannot reuse the ID of a
  /// soft-deleted managed identity until it is permanently deleted.
  late final pulumi.Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;

  /// The ID to use for the managed identity. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final pulumi.Output<String> workloadIdentityPoolManagedIdentityId;

  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final pulumi.Output<String> workloadIdentityPoolNamespaceId;

  WorkloadIdentityPoolManagedIdentity(
    String name, {
    WorkloadIdentityPoolManagedIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolManagedIdentity:WorkloadIdentityPoolManagedIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestationRules = registerOutput<
            List<WorkloadIdentityPoolManagedIdentityAttestationRule>?>(
        'attestationRules');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolManagedIdentityId =
        registerOutput<String>('workloadIdentityPoolManagedIdentityId');
    this.workloadIdentityPoolNamespaceId =
        registerOutput<String>('workloadIdentityPoolNamespaceId');
  }
}
