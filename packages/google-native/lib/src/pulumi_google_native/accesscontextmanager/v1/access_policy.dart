import 'package:pulumi/pulumi.dart' hide Config;
import 'access_policy_args.dart';

/// Creates an access policy. This method fails if the organization already has an access policy. The long-running operation has a successful status after the access policy propagates to long-lasting storage. Syntactic and basic semantic errors are returned in `metadata` as a BadRequest proto.
/// Auto-naming is currently not supported for this resource.
class AccessPolicy extends CustomResource {
  /// An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.
  late final Output<String> etag;

  /// Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`
  late final Output<String> name;

  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  late final Output<String> parent;

  /// The scopes of the AccessPolicy. Scopes define which resources a policy can restrict and where its resources can be referenced. For example, policy A with `scopes=["folders/123"]` has the following behavior: - ServicePerimeter can only restrict projects within `folders/123`. - ServicePerimeter within policy A can only reference access levels defined within policy A. - Only one policy can include a given scope; thus, attempting to create a second policy which includes `folders/123` will result in an error. If no scopes are provided, then any resource within the organization can be restricted. Scopes cannot be modified after a policy is created. Policies can only have a single scope. Format: list of `folders/{folder_number}` or `projects/{project_number}`
  late final Output<List<String>> scopes;

  /// Human readable title. Does not affect behavior.
  late final Output<String> title;

  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1:AccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.scopes = registerOutput<List<String>>('scopes');
    this.title = registerOutput<String>('title');
  }
}
