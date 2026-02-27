import 'package:pulumi/pulumi.dart' hide Config;
import 'access_restrictions_response.dart';
import 'workforce_pool_args.dart';

/// Creates a new WorkforcePool. You cannot reuse the name of a deleted pool until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class WorkforcePool extends CustomResource {
  /// Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  late final Output<AccessRestrictionsResponse> accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  late final Output<String> description;

  /// Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final Output<bool> disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  late final Output<String> displayName;

  /// Time after which the workforce pool will be permanently purged and cannot be recovered.
  late final Output<String> expireTime;
  late final Output<String> location;

  /// The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  late final Output<String> name;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  late final Output<String> parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  late final Output<String> sessionDuration;

  /// The state of the pool.
  late final Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String?> workforcePoolId;

  WorkforcePool(
    String name, {
    WorkforcePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:WorkforcePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRestrictions =
        registerOutput<AccessRestrictionsResponse>('accessRestrictions');
    this.description = registerOutput<String>('description');
    this.disabled = registerOutput<bool>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.sessionDuration = registerOutput<String>('sessionDuration');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String?>('workforcePoolId');
  }
}
