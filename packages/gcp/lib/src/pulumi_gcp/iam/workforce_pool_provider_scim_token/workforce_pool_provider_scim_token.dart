import 'package:pulumi/pulumi.dart';
import 'workforce_pool_provider_scim_token_args.dart';

/// Represents a SCIM Token for a Workforce Pool Provider Scim Tenant.
/// The SCIM Token is used for authenticating SCIM provisioning requests during the synchronization of user/group identities from external identity provider into Google Cloud using the System for Cross-domain Identity Management (SCIM) protocol. This needs to be provided in the Secret (Long Lived) Token field when configuring SCIM on an IdP.
///
///
/// To get more information about WorkforcePoolProviderScimToken, see:
///
/// * [API documentation](https://docs.cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers.scimTenants.tokens)
/// * How-to Guides
/// * [Create a SCIM Token for the SCIM Tenant](https://cloud.google.com/iam/docs/workforce-sign-in-microsoft-entra-id-scalable-groups?group_type=extended#extended-attributes)
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Scim Token Basic
///
///
///
///
/// ## Import
///
/// WorkforcePoolProviderScimToken can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/scimTenants/{{scim_tenant_id}}/tokens/{{scim_token_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}/{{scim_tenant_id}}/{{scim_token_id}}`
///
/// When using the `pulumi import` command, WorkforcePoolProviderScimToken can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderScimToken:WorkforcePoolProviderScimToken default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/scimTenants/{{scim_tenant_id}}/tokens/{{scim_token_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderScimToken:WorkforcePoolProviderScimToken default {{location}}/{{workforce_pool_id}}/{{provider_id}}/{{scim_tenant_id}}/{{scim_token_id}}
/// ```
class WorkforcePoolProviderScimToken extends CustomResource {
  /// A user-specified display name for the scim token. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// The location for the resource.
  late final Output<String> location;

  /// Identifier. The resource name of the scim token.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}/tokens/{scim_token_id}`
  late final Output<String> name;

  /// The ID of the Provider.
  late final Output<String> providerId;

  /// The ID of the SCIM Tenant.
  late final Output<String> scimTenantId;

  /// The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  late final Output<String> scimTokenId;

  /// The token string provided to the IdP for authentication and will be set only during creation.
  late final Output<String> securityToken;

  /// The current state of the scim token.
  /// * ACTIVE: The token is active and may be used to provision users and groups.
  /// * DELETED: The token is soft-deleted. Soft-deleted tokens are permanently deleted after approximately 30 days.
  late final Output<String> state;

  /// The ID of the Workforce Pool.
  late final Output<String> workforcePoolId;

  WorkforcePoolProviderScimToken(
    String name, {
    WorkforcePoolProviderScimTokenArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderScimToken:WorkforcePoolProviderScimToken',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.scimTenantId = registerOutput<String>('scimTenantId');
    this.scimTokenId = registerOutput<String>('scimTokenId');
    this.securityToken = registerOutput<String>('securityToken');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
