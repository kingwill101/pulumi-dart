import 'package:pulumi/pulumi.dart';
import '../workforce_pool_access_restrictions/workforce_pool_access_restrictions.dart';
import 'workforce_pool_args.dart';

/// Represents a collection of external workforces. Provides namespaces for
/// federated users that can be referenced in IAM policies.
///
///
/// To get more information about WorkforcePool, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools)
/// * How-to Guides
/// * [Manage pools](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#manage_pools)
///
/// > **Note:** Ask your Google Cloud account team to request access to workforce identity federation for
/// your billing/quota project. The account team notifies you when the project is granted access.
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Basic
///
///
///
/// ### Iam Workforce Pool Full
///
///
///
///
/// ## Import
///
/// WorkforcePool can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}`
///
/// When using the `pulumi import` command, WorkforcePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePool:WorkforcePool default locations/{{location}}/workforcePools/{{workforce_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePool:WorkforcePool default {{location}}/{{workforce_pool_id}}
/// ```
class WorkforcePool extends CustomResource {
  /// Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// Structure is documented below.
  late final Output<WorkforcePoolAccessRestrictions?> accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final Output<bool?> disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// The location for the resource.
  late final Output<String> location;

  /// Output only. The resource name of the pool.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}`
  late final Output<String> name;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  late final Output<String> parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and `gcloud` sign-in sessions from this pool are valid.
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
  /// If `sessionDuration` is not configured, minted credentials have a default duration of one hour (3600s).
  /// A duration in seconds with up to nine fractional digits, ending with '`s`'. Example: "`3.5s`".
  late final Output<String?> sessionDuration;

  /// Output only. The state of the pool.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The pool is active, and may be used in Google Cloud policies.
  /// * DELETED: The pool is soft-deleted. Soft-deleted pools are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted pool using
  /// [workforcePools.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePool).
  /// You cannot reuse the ID of a soft-deleted pool until it is permanently deleted.
  /// While a pool is deleted, you cannot use it to exchange tokens, or use
  /// existing tokens to access resources. If the pool is undeleted, existing
  /// tokens grant access again.
  late final Output<String> state;

  /// The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  /// digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workforcePoolId;

  WorkforcePool(
    String name, {
    WorkforcePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePool:WorkforcePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRestrictions =
        registerOutput<WorkforcePoolAccessRestrictions?>('accessRestrictions');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.sessionDuration = registerOutput<String?>('sessionDuration');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
