import 'package:pulumi/pulumi.dart';
import 'authorized_orgs_desc_args.dart';

/// An authorized organizations description describes a list of organizations
/// (1) that have been authorized to use certain asset (for example, device) data
/// owned by different organizations at the enforcement points, or (2) with certain
/// asset (for example, device) have been authorized to access the resources in
/// another organization at the enforcement points.
///
///
/// To get more information about AuthorizedOrgsDesc, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.authorizedOrgsDescs)
/// * How-to Guides
/// * [gcloud docs](https://cloud.google.com/beyondcorp-enterprise/docs/cross-org-authorization)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Authorized Orgs Desc Basic
///
///
///
///
/// ## Import
///
/// AuthorizedOrgsDesc can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthorizedOrgsDesc can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/authorizedOrgsDesc:AuthorizedOrgsDesc default {{name}}
/// ```
class AuthorizedOrgsDesc extends CustomResource {
  /// The type of entities that need to use the authorization relationship during
  /// evaluation, such as a device. Valid values are "ASSET_TYPE_DEVICE" and
  /// "ASSET_TYPE_CREDENTIAL_STRENGTH".
  /// Possible values are: `ASSET_TYPE_DEVICE`, `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  late final Output<String?> assetType;

  /// The direction of the authorization relationship between this organization
  /// and the organizations listed in the "orgs" field. The valid values for this
  /// field include the following:
  /// AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
  /// in the organizations listed in the `orgs` field.
  /// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the `orgs`
  /// field to evaluate the traffic in this organization.
  /// For the authorization relationship to take effect, all of the organizations
  /// must authorize and specify the appropriate relationship direction. For
  /// example, if organization A authorized organization B and C to evaluate its
  /// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the authorization
  /// direction, organizations B and C must specify
  /// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction in their
  /// "AuthorizedOrgsDesc" resource.
  /// Possible values are: `AUTHORIZATION_DIRECTION_TO`, `AUTHORIZATION_DIRECTION_FROM`.
  late final Output<String?> authorizationDirection;

  /// A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// Possible values are: `AUTHORIZATION_TYPE_TRUST`.
  late final Output<String?> authorizationType;

  /// Time the AuthorizedOrgsDesc was created in UTC.
  late final Output<String> createTime;

  /// Resource name for the `AuthorizedOrgsDesc`. Format:
  /// `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`.
  /// The `authorized_orgs_desc` component must begin with a letter, followed by
  /// alphanumeric characters or `_`.
  /// After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  late final Output<String> name;

  /// The list of organization ids in this AuthorizedOrgsDesc.
  /// Format: `organizations/<org_number>`
  /// Example: `organizations/123456`
  late final Output<List<String>?> orgs;

  /// Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  late final Output<String> parent;

  /// Time the AuthorizedOrgsDesc was updated in UTC.
  late final Output<String> updateTime;

  AuthorizedOrgsDesc(
    String name, {
    AuthorizedOrgsDescArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/authorizedOrgsDesc:AuthorizedOrgsDesc',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetType = registerOutput<String?>('assetType');
    this.authorizationDirection =
        registerOutput<String?>('authorizationDirection');
    this.authorizationType = registerOutput<String?>('authorizationType');
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.orgs = registerOutput<List<String>?>('orgs');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
