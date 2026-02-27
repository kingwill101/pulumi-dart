import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_inline_certificate_issuance_config/workload_identity_pool_inline_certificate_issuance_config.dart';
import '../workload_identity_pool_inline_trust_config/workload_identity_pool_inline_trust_config.dart';
import 'workload_identity_pool_args.dart';

/// Represents a collection of external workload identities. You can define IAM policies to
/// grant these identities access to Google Cloud resources.
///
///
/// To get more information about WorkloadIdentityPool, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
/// * [Managing workload identity pools](https://cloud.google.com/iam/docs/manage-workload-identity-pools-providers#pools)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Basic
///
///
///
/// ### Iam Workload Identity Pool Full Federation Only Mode
///
///
///
/// ### Iam Workload Identity Pool Full Trust Domain Mode
///
///
///
///
/// ## Import
///
/// WorkloadIdentityPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}`
///
/// * `{{workload_identity_pool_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default {{project}}/{{workload_identity_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default {{workload_identity_pool_id}}
/// ```
class WorkloadIdentityPool extends CustomResource {
  /// A description of the pool. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
  /// existing tokens to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  late final Output<bool?> disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// Represents configuration for generating mutual TLS (mTLS) certificates for the identities
  /// within this pool. Defines the Certificate Authority (CA) pool resources and configurations
  /// required for issuance and rotation of mTLS workload certificates.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolInlineCertificateIssuanceConfig?>
      inlineCertificateIssuanceConfig;

  /// Represents config to add additional trusted trust domains. Defines configuration for extending
  /// trust to additional trust domains. By establishing trust with another domain, the current
  /// domain will recognize and accept certificates issued by entities within the trusted domains.
  /// Note that a trust domain automatically trusts itself, eliminating the need for explicit
  /// configuration.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolInlineTrustConfig?> inlineTrustConfig;

  /// The mode for the pool is operating in. Pools with an unspecified mode will operate as if they
  /// are in `FEDERATION_ONLY` mode.
  ///
  /// > **Note** This field cannot be changed after the Workload Identity Pool is created. While
  /// `pulumi preview` may show an update if you change this field's value, `pulumi up`
  /// **will fail with an API error** (such as `Error 400: Attempted to update an immutable field.`).
  /// To specify a different `mode`, please create a new Workload Identity Pool resource.
  /// * `FEDERATION_ONLY`: Pools can only be used for federating external workload identities into
  /// Google Cloud. Unless otherwise noted, no structure or format constraints are applied to
  /// workload identities in a `FEDERATION_ONLY` mode pool, and you may not create any resources
  /// within the pool besides providers.
  /// * `TRUST_DOMAIN`: Pools can be used to assign identities to Google Cloud workloads. All
  /// identities within a `TRUST_DOMAIN` mode pool must consist of a single namespace and individual
  /// workload identifier. The subject identifier for all identities must conform to the following
  /// format: `ns/<namespace>/sa/<workload_identifier>`.
  /// `gcp.iam.WorkloadIdentityPoolProvider`s cannot be created within `TRUST_DOMAIN`
  /// mode pools.
  /// Possible values are: `FEDERATION_ONLY`, `TRUST_DOMAIN`.
  late final Output<String?> mode;

  /// The resource name of the pool as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The state of the pool.
  /// * `STATE_UNSPECIFIED`: State unspecified.
  /// * `ACTIVE`: The pool is active, and may be used in Google Cloud policies.
  /// * `DELETED`: The pool is soft-deleted. Soft-deleted pools are permanently deleted after
  /// approximately 30 days. You can restore a soft-deleted pool using
  /// `UndeleteWorkloadIdentityPool`. You cannot reuse the ID of a soft-deleted pool until it is
  /// permanently deleted. While a pool is deleted, you cannot use it to exchange tokens, or
  /// use existing tokens to access resources. If the pool is undeleted, existing tokens grant
  /// access again.
  late final Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workloadIdentityPoolId;

  WorkloadIdentityPool(
    String name, {
    WorkloadIdentityPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPool:WorkloadIdentityPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.inlineCertificateIssuanceConfig =
        registerOutput<WorkloadIdentityPoolInlineCertificateIssuanceConfig?>(
            'inlineCertificateIssuanceConfig');
    this.inlineTrustConfig =
        registerOutput<WorkloadIdentityPoolInlineTrustConfig?>(
            'inlineTrustConfig');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
  }
}
