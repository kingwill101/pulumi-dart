import 'package:pulumi/pulumi.dart' as pulumi;
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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkforcePool("pool", {
///     workforcePoolId: "example-pool",
///     parent: "organizations/123456789",
///     location: "global",
/// });
/// const provider = new gcp.iam.WorkforcePoolProvider("provider", {
///     location: "global",
///     workforcePoolId: pool.workforcePoolId,
///     providerId: "example-prvdr",
///     attributeMapping: {
///         "google.subject": "assertion.sub",
///     },
///     oidc: {
///         issuerUri: "https://accounts.thirdparty.com",
///         clientId: "client-id",
///         clientSecret: {
///             value: {
///                 plainText: "client-secret",
///             },
///         },
///         webSsoConfig: {
///             responseType: "CODE",
///             assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             additionalScopes: [
///                 "groups",
///                 "roles",
///             ],
///         },
///     },
///     displayName: "Display name",
///     description: "A sample OIDC workforce pool provider.",
///     disabled: false,
///     attributeCondition: "true",
/// });
/// const example = new gcp.iam.WorkforcePoolProviderScimTenant("example", {
///     location: "global",
///     workforcePoolId: pool.workforcePoolId,
///     providerId: provider.providerId,
///     scimTenantId: "example-scim-tenant",
///     displayName: "Example SCIM Tenant",
///     description: "A basic SCIM tenant for IAM Workforce Pool Provider",
///     claimMapping: {
///         "google.subject": "user.externalId",
///         "google.group": "group.externalId",
///     },
///     hardDelete: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkforcePool("pool",
///     workforce_pool_id="example-pool",
///     parent="organizations/123456789",
///     location="global")
/// provider = gcp.iam.WorkforcePoolProvider("provider",
///     location="global",
///     workforce_pool_id=pool.workforce_pool_id,
///     provider_id="example-prvdr",
///     attribute_mapping={
///         "google.subject": "assertion.sub",
///     },
///     oidc={
///         "issuer_uri": "https://accounts.thirdparty.com",
///         "client_id": "client-id",
///         "client_secret": {
///             "value": {
///                 "plain_text": "client-secret",
///             },
///         },
///         "web_sso_config": {
///             "response_type": "CODE",
///             "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///             "additional_scopes": [
///                 "groups",
///                 "roles",
///             ],
///         },
///     },
///     display_name="Display name",
///     description="A sample OIDC workforce pool provider.",
///     disabled=False,
///     attribute_condition="true")
/// example = gcp.iam.WorkforcePoolProviderScimTenant("example",
///     location="global",
///     workforce_pool_id=pool.workforce_pool_id,
///     provider_id=provider.provider_id,
///     scim_tenant_id="example-scim-tenant",
///     display_name="Example SCIM Tenant",
///     description="A basic SCIM tenant for IAM Workforce Pool Provider",
///     claim_mapping={
///         "google.subject": "user.externalId",
///         "google.group": "group.externalId",
///     },
///     hard_delete=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Gcp.Iam.WorkforcePool("pool", new()
///     {
///         WorkforcePoolId = "example-pool",
///         Parent = "organizations/123456789",
///         Location = "global",
///     });
///
///     var provider = new Gcp.Iam.WorkforcePoolProvider("provider", new()
///     {
///         Location = "global",
///         WorkforcePoolId = pool.WorkforcePoolId,
///         ProviderId = "example-prvdr",
///         AttributeMapping =
///         {
///             { "google.subject", "assertion.sub" },
///         },
///         Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
///         {
///             IssuerUri = "https://accounts.thirdparty.com",
///             ClientId = "client-id",
///             ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
///             {
///                 Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
///                 {
///                     PlainText = "client-secret",
///                 },
///             },
///             WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
///             {
///                 ResponseType = "CODE",
///                 AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
///                 AdditionalScopes = new[]
///                 {
///                     "groups",
///                     "roles",
///                 },
///             },
///         },
///         DisplayName = "Display name",
///         Description = "A sample OIDC workforce pool provider.",
///         Disabled = false,
///         AttributeCondition = "true",
///     });
///
///     var example = new Gcp.Iam.WorkforcePoolProviderScimTenant("example", new()
///     {
///         Location = "global",
///         WorkforcePoolId = pool.WorkforcePoolId,
///         ProviderId = provider.ProviderId,
///         ScimTenantId = "example-scim-tenant",
///         DisplayName = "Example SCIM Tenant",
///         Description = "A basic SCIM tenant for IAM Workforce Pool Provider",
///         ClaimMapping =
///         {
///             { "google.subject", "user.externalId" },
///             { "google.group", "group.externalId" },
///         },
///         HardDelete = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pool, err := iam.NewWorkforcePool(ctx, "pool", &iam.WorkforcePoolArgs{
/// 			WorkforcePoolId: pulumi.String("example-pool"),
/// 			Parent:          pulumi.String("organizations/123456789"),
/// 			Location:        pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		provider, err := iam.NewWorkforcePoolProvider(ctx, "provider", &iam.WorkforcePoolProviderArgs{
/// 			Location:        pulumi.String("global"),
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			ProviderId:      pulumi.String("example-prvdr"),
/// 			AttributeMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("assertion.sub"),
/// 			},
/// 			Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// 				IssuerUri: pulumi.String("https://accounts.thirdparty.com"),
/// 				ClientId:  pulumi.String("client-id"),
/// 				ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// 					Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// 						PlainText: pulumi.String("client-secret"),
/// 					},
/// 				},
/// 				WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// 					ResponseType:            pulumi.String("CODE"),
/// 					AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// 					AdditionalScopes: pulumi.StringArray{
/// 						pulumi.String("groups"),
/// 						pulumi.String("roles"),
/// 					},
/// 				},
/// 			},
/// 			DisplayName:        pulumi.String("Display name"),
/// 			Description:        pulumi.String("A sample OIDC workforce pool provider."),
/// 			Disabled:           pulumi.Bool(false),
/// 			AttributeCondition: pulumi.String("true"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkforcePoolProviderScimTenant(ctx, "example", &iam.WorkforcePoolProviderScimTenantArgs{
/// 			Location:        pulumi.String("global"),
/// 			WorkforcePoolId: pool.WorkforcePoolId,
/// 			ProviderId:      provider.ProviderId,
/// 			ScimTenantId:    pulumi.String("example-scim-tenant"),
/// 			DisplayName:     pulumi.String("Example SCIM Tenant"),
/// 			Description:     pulumi.String("A basic SCIM tenant for IAM Workforce Pool Provider"),
/// 			ClaimMapping: pulumi.StringMap{
/// 				"google.subject": pulumi.String("user.externalId"),
/// 				"google.group":   pulumi.String("group.externalId"),
/// 			},
/// 			HardDelete: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iam.WorkforcePool;
/// import com.pulumi.gcp.iam.WorkforcePoolArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProvider;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcClientSecretValueArgs;
/// import com.pulumi.gcp.iam.inputs.WorkforcePoolProviderOidcWebSsoConfigArgs;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderScimTenant;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderScimTenantArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
///             .workforcePoolId("example-pool")
///             .parent("organizations/123456789")
///             .location("global")
///             .build());
///
///         var provider = new WorkforcePoolProvider("provider", WorkforcePoolProviderArgs.builder()
///             .location("global")
///             .workforcePoolId(pool.workforcePoolId())
///             .providerId("example-prvdr")
///             .attributeMapping(Map.of("google.subject", "assertion.sub"))
///             .oidc(WorkforcePoolProviderOidcArgs.builder()
///                 .issuerUri("https://accounts.thirdparty.com")
///                 .clientId("client-id")
///                 .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
///                     .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
///                         .plainText("client-secret")
///                         .build())
///                     .build())
///                 .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
///                     .responseType("CODE")
///                     .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
///                     .additionalScopes(
///                         "groups",
///                         "roles")
///                     .build())
///                 .build())
///             .displayName("Display name")
///             .description("A sample OIDC workforce pool provider.")
///             .disabled(false)
///             .attributeCondition("true")
///             .build());
///
///         var example = new WorkforcePoolProviderScimTenant("example", WorkforcePoolProviderScimTenantArgs.builder()
///             .location("global")
///             .workforcePoolId(pool.workforcePoolId())
///             .providerId(provider.providerId())
///             .scimTenantId("example-scim-tenant")
///             .displayName("Example SCIM Tenant")
///             .description("A basic SCIM tenant for IAM Workforce Pool Provider")
///             .claimMapping(Map.ofEntries(
///                 Map.entry("google.subject", "user.externalId"),
///                 Map.entry("google.group", "group.externalId")
///             ))
///             .hardDelete(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:iam:WorkforcePool
///     properties:
///       workforcePoolId: example-pool
///       parent: organizations/123456789
///       location: global
///   provider:
///     type: gcp:iam:WorkforcePoolProvider
///     properties:
///       location: global
///       workforcePoolId: ${pool.workforcePoolId}
///       providerId: example-prvdr
///       attributeMapping:
///         google.subject: assertion.sub
///       oidc:
///         issuerUri: https://accounts.thirdparty.com
///         clientId: client-id
///         clientSecret:
///           value:
///             plainText: client-secret
///         webSsoConfig:
///           responseType: CODE
///           assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
///           additionalScopes:
///             - groups
///             - roles
///       displayName: Display name
///       description: A sample OIDC workforce pool provider.
///       disabled: false
///       attributeCondition: 'true'
///   example:
///     type: gcp:iam:WorkforcePoolProviderScimTenant
///     properties:
///       location: global
///       workforcePoolId: ${pool.workforcePoolId}
///       providerId: ${provider.providerId}
///       scimTenantId: example-scim-tenant
///       displayName: Example SCIM Tenant
///       description: A basic SCIM tenant for IAM Workforce Pool Provider
///       claimMapping:
///         google.subject: user.externalId
///         google.group: group.externalId
///       hardDelete: true # state, base_uri, purge_time and service_agent are output only, not settable
/// ```
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
class WorkforcePoolProviderScimTenant extends pulumi.CustomResource {
  /// Represents the base URI as defined in [RFC 7644, Section
  /// 1.3](https://datatracker.ietf.org/doc/html/rfc7644#section-1.3). Clients
  /// must use this as the root address for managing resources under the tenant.
  /// Format:
  /// https://iamscim.googleapis.com/{version}/{tenant_id}/
  late final pulumi.Output<String> baseUri;
  /// Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  late final pulumi.Output<Map<String, String>?> claimMapping;
  /// A user-specified description of the provider. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;
  /// A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;
  /// Deletes the SCIM tenant immediately. This operation cannot be undone.
  late final pulumi.Output<bool?> hardDelete;
  /// The location for the resource.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the scim tenant.
  /// Format: `locations/{location}/workforcePools/{workforce_pool}/providers/{workforce_pool_provider}/scimTenants/{scim_tenant_id}
  late final pulumi.Output<String> name;
  /// The ID of the provider.
  late final pulumi.Output<String> providerId;
  /// The timestamp that represents the time when the SCIM tenant is purged.
  late final pulumi.Output<String> purgeTime;
  /// The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final pulumi.Output<String> scimTenantId;
  /// Service Agent created by SCIM Tenant API. SCIM tokens created under
  /// this tenant will be attached to this service agent.
  late final pulumi.Output<String> serviceAgent;
  /// The current state of the scim tenant.
  /// * ACTIVE: The scim tenant is active and may be used to validate authentication credentials.
  /// * DELETED: The scim tenant is soft-deleted. Soft-deleted scim tenants are permanently
  /// deleted after approximately 30 days.
  late final pulumi.Output<String> state;
  /// The ID of the workforce pool.
  late final pulumi.Output<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolProviderScimTenant]. {@macro pulumi_iam_workforce_pool_provider_scim_tenant_workforce_pool_provider_scim_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolProviderScimTenant(
    String name, {
    WorkforcePoolProviderScimTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderScimTenant:WorkforcePoolProviderScimTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
