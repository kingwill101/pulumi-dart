import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_namespace_owner_service/workload_identity_pool_namespace_owner_service.dart';
import 'workload_identity_pool_namespace_args.dart';

/// Represents a namespace for a workload identity pool. Namespaces are used to segment identities
/// within the pool.
///
/// To get more information about WorkloadIdentityPoolNamespace, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.namespaces)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Namespace Basic
///
///
///
/// ### Iam Workload Identity Pool Namespace Full
///
///
///
///
/// ## Import
///
/// WorkloadIdentityPoolNamespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolNamespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/namespaces/{{workload_identity_pool_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace default {{workload_identity_pool_id}}/{{workload_identity_pool_namespace_id}}
/// ```
class WorkloadIdentityPoolNamespace extends CustomResource {
  /// A description of the namespace. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the namespace is disabled. If disabled, credentials may no longer be issued for
  /// identities within this namespace, however existing credentials will still be accepted until
  /// they expire.
  late final Output<bool?> disabled;

  /// The resource name of the namespace as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}`.
  late final Output<String> name;

  /// Defines the owner that is allowed to mutate this resource. If present, this resource can only
  /// be mutated by the owner.
  /// Structure is documented below.
  late final Output<List<WorkloadIdentityPoolNamespaceOwnerService>>
      ownerServices;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The current state of the namespace.
  /// * `ACTIVE`: The namespace is active.
  /// * `DELETED`: The namespace is soft-deleted. Soft-deleted namespaces are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted namespace using
  /// UndeleteWorkloadIdentityPoolNamespace. You cannot reuse the ID of a soft-deleted namespace
  /// until it is permanently deleted.
  late final Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workloadIdentityPoolId;

  /// The ID to use for the namespace. This value must:
  /// * contain at most 63 characters
  /// * contain only lowercase alphanumeric characters or `-`
  /// * start with an alphanumeric character
  /// * end with an alphanumeric character
  ///
  /// The prefix `gcp-` will be reserved for future uses.
  late final Output<String> workloadIdentityPoolNamespaceId;

  WorkloadIdentityPoolNamespace(
    String name, {
    WorkloadIdentityPoolNamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolNamespace:WorkloadIdentityPoolNamespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.ownerServices =
        registerOutput<List<WorkloadIdentityPoolNamespaceOwnerService>>(
            'ownerServices');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolNamespaceId =
        registerOutput<String>('workloadIdentityPoolNamespaceId');
  }
}
