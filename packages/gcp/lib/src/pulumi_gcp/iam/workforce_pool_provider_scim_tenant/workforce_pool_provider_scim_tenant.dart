import 'package:pulumi/pulumi.dart';
import 'workforce_pool_provider_scim_tenant_args.dart';

/// Represents a SCIM tenant configuration for a Workforce Pool Provider.
/// The SCIM tenant configuration allows for the synchronization of user/group identities from external identity provider into Google Cloud using the System for Cross-domain Identity Management (SCIM) protocol.
///
///
/// To get more information about WorkforcePoolProviderScimTenant, see:
///
/// * [API documentation](https://docs.cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers.scimTenants)
/// * How-to Guides
/// * [Configure a SCIM Tenant](https://cloud.google.com/iam/docs/workforce-sign-in-microsoft-entra-id-scalable-groups?group_type=extended#extended-attributes)
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Scim Tenant Basic
///
///
///
///
/// ## Import
///
/// WorkforcePoolProviderScimTenant can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/scimTenants/{{scim_tenant_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}/{{scim_tenant_id}}`
///
/// When using the `pulumi import` command, WorkforcePoolProviderScimTenant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderScimTenant:WorkforcePoolProviderScimTenant default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/scimTenants/{{scim_tenant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderScimTenant:WorkforcePoolProviderScimTenant default {{location}}/{{workforce_pool_id}}/{{provider_id}}/{{scim_tenant_id}}
/// ```
class WorkforcePoolProviderScimTenant extends CustomResource {
  /// Represents the base URI as defined in [RFC 7644, Section
  /// 1.3](https://datatracker.ietf.org/doc/html/rfc7644#section-1.3). Clients
  /// must use this as the root address for managing resources under the tenant.
  /// Format:
  /// https://iamscim.googleapis.com/{version}/{tenant_id}/
  late final Output<String> baseUri;

  /// Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  late final Output<Map<String, String>?> claimMapping;

  /// A user-specified description of the provider. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// Deletes the SCIM tenant immediately. This operation cannot be undone.
  late final Output<bool?> hardDelete;

  /// The location for the resource.
  late final Output<String> location;

  /// Identifier. The resource name of the scim tenant.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}
  late final Output<String> name;

  /// The ID of the provider.
  late final Output<String> providerId;

  /// The timestamp that represents the time when the SCIM tenant is purged.
  late final Output<String> purgeTime;

  /// The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final Output<String> scimTenantId;

  /// Service Agent created by SCIM Tenant API. SCIM tokens created under
  /// this tenant will be attached to this service agent.
  late final Output<String> serviceAgent;

  /// The current state of the scim tenant.
  /// * ACTIVE: The scim tenant is active and may be used to validate authentication credentials.
  /// * DELETED: The scim tenant is soft-deleted. Soft-deleted scim tenants are permanently
  /// deleted after approximately 30 days.
  late final Output<String> state;

  /// The ID of the workforce pool.
  late final Output<String> workforcePoolId;

  WorkforcePoolProviderScimTenant(
    String name, {
    WorkforcePoolProviderScimTenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderScimTenant:WorkforcePoolProviderScimTenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseUri = registerOutput<String>('baseUri');
    this.claimMapping = registerOutput<Map<String, String>?>('claimMapping');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.hardDelete = registerOutput<bool?>('hardDelete');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.purgeTime = registerOutput<String>('purgeTime');
    this.scimTenantId = registerOutput<String>('scimTenantId');
    this.serviceAgent = registerOutput<String>('serviceAgent');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
