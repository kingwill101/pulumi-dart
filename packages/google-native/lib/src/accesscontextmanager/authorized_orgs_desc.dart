import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_orgs_desc_args.dart';

/// Creates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. The name of this `AuthorizedOrgsDesc` will be assigned during creation.
class AuthorizedOrgsDesc extends pulumi.CustomResource {
  late final pulumi.Output<String> accessPolicyId;

  /// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  late final pulumi.Output<String> assetType;

  /// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  late final pulumi.Output<String> authorizationDirection;

  /// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  late final pulumi.Output<String> authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  late final pulumi.Output<String> name;

  /// The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  late final pulumi.Output<List<String>> orgs;

  /// Creates a new [AuthorizedOrgsDesc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizedOrgsDesc]. {@macro pulumi_accesscontextmanager_v1_authorized_orgs_desc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizedOrgsDesc(
    String name, {
    AuthorizedOrgsDescArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:accesscontextmanager/v1:AuthorizedOrgsDesc',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.assetType = registerOutput<String>('assetType');
    this.authorizationDirection = registerOutput<String>(
      'authorizationDirection',
    );
    this.authorizationType = registerOutput<String>('authorizationType');
    this.name = registerOutput<String>('name');
    this.orgs = registerOutput<List<String>>('orgs');
  }
}
