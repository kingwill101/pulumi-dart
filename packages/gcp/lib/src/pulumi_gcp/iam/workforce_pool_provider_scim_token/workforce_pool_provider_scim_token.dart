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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkforcePool("pool", {
/// workforcePoolId: "example-pool",
/// parent: "organizations/123456789",
/// location: "global",
/// });
/// const provider = new gcp.iam.WorkforcePoolProvider("provider", {
/// location: "global",
/// workforcePoolId: pool.workforcePoolId,
/// providerId: "example-prvdr",
/// attributeMapping: {
/// "google.subject": "assertion.sub",
/// },
/// oidc: {
/// issuerUri: "https://accounts.thirdparty.com",
/// clientId: "client-id",
/// clientSecret: {
/// value: {
/// plainText: "client-secret",
/// },
/// },
/// webSsoConfig: {
/// responseType: "CODE",
/// assertionClaimsBehavior: "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
/// additionalScopes: [
/// "groups",
/// "roles",
/// ],
/// },
/// },
/// displayName: "Display name",
/// description: "A sample OIDC workforce pool provider.",
/// disabled: false,
/// attributeCondition: "true",
/// });
/// const tenant = new gcp.iam.WorkforcePoolProviderScimTenant("tenant", {
/// location: "global",
/// workforcePoolId: pool.workforcePoolId,
/// providerId: provider.providerId,
/// scimTenantId: "example-tenant",
/// displayName: "SCIM Tenant display Name",
/// description: "A SCIM Tenant for IAM Workforce Pool Provider",
/// claimMapping: {
/// "google.subject": "user.externalId",
/// "google.group": "group.externalId",
/// },
/// hardDelete: true,
/// });
/// const example = new gcp.iam.WorkforcePoolProviderScimToken("example", {
/// location: "global",
/// workforcePoolId: pool.workforcePoolId,
/// providerId: provider.providerId,
/// scimTenantId: tenant.scimTenantId,
/// scimTokenId: "example-scim-token",
/// displayName: "SCIM Token display Name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkforcePool("pool",
/// workforce_pool_id="example-pool",
/// parent="organizations/123456789",
/// location="global")
/// provider = gcp.iam.WorkforcePoolProvider("provider",
/// location="global",
/// workforce_pool_id=pool.workforce_pool_id,
/// provider_id="example-prvdr",
/// attribute_mapping={
/// "google.subject": "assertion.sub",
/// },
/// oidc={
/// "issuer_uri": "https://accounts.thirdparty.com",
/// "client_id": "client-id",
/// "client_secret": {
/// "value": {
/// "plain_text": "client-secret",
/// },
/// },
/// "web_sso_config": {
/// "response_type": "CODE",
/// "assertion_claims_behavior": "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
/// "additional_scopes": [
/// "groups",
/// "roles",
/// ],
/// },
/// },
/// display_name="Display name",
/// description="A sample OIDC workforce pool provider.",
/// disabled=False,
/// attribute_condition="true")
/// tenant = gcp.iam.WorkforcePoolProviderScimTenant("tenant",
/// location="global",
/// workforce_pool_id=pool.workforce_pool_id,
/// provider_id=provider.provider_id,
/// scim_tenant_id="example-tenant",
/// display_name="SCIM Tenant display Name",
/// description="A SCIM Tenant for IAM Workforce Pool Provider",
/// claim_mapping={
/// "google.subject": "user.externalId",
/// "google.group": "group.externalId",
/// },
/// hard_delete=True)
/// example = gcp.iam.WorkforcePoolProviderScimToken("example",
/// location="global",
/// workforce_pool_id=pool.workforce_pool_id,
/// provider_id=provider.provider_id,
/// scim_tenant_id=tenant.scim_tenant_id,
/// scim_token_id="example-scim-token",
/// display_name="SCIM Token display Name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkforcePool("pool", new()
/// {
/// WorkforcePoolId = "example-pool",
/// Parent = "organizations/123456789",
/// Location = "global",
/// });
///
/// var provider = new Gcp.Iam.WorkforcePoolProvider("provider", new()
/// {
/// Location = "global",
/// WorkforcePoolId = pool.WorkforcePoolId,
/// ProviderId = "example-prvdr",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.sub" },
/// },
/// Oidc = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcArgs
/// {
/// IssuerUri = "https://accounts.thirdparty.com",
/// ClientId = "client-id",
/// ClientSecret = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretArgs
/// {
/// Value = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcClientSecretValueArgs
/// {
/// PlainText = "client-secret",
/// },
/// },
/// WebSsoConfig = new Gcp.Iam.Inputs.WorkforcePoolProviderOidcWebSsoConfigArgs
/// {
/// ResponseType = "CODE",
/// AssertionClaimsBehavior = "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS",
/// AdditionalScopes = new[]
/// {
/// "groups",
/// "roles",
/// },
/// },
/// },
/// DisplayName = "Display name",
/// Description = "A sample OIDC workforce pool provider.",
/// Disabled = false,
/// AttributeCondition = "true",
/// });
///
/// var tenant = new Gcp.Iam.WorkforcePoolProviderScimTenant("tenant", new()
/// {
/// Location = "global",
/// WorkforcePoolId = pool.WorkforcePoolId,
/// ProviderId = provider.ProviderId,
/// ScimTenantId = "example-tenant",
/// DisplayName = "SCIM Tenant display Name",
/// Description = "A SCIM Tenant for IAM Workforce Pool Provider",
/// ClaimMapping =
/// {
/// { "google.subject", "user.externalId" },
/// { "google.group", "group.externalId" },
/// },
/// HardDelete = true,
/// });
///
/// var example = new Gcp.Iam.WorkforcePoolProviderScimToken("example", new()
/// {
/// Location = "global",
/// WorkforcePoolId = pool.WorkforcePoolId,
/// ProviderId = provider.ProviderId,
/// ScimTenantId = tenant.ScimTenantId,
/// ScimTokenId = "example-scim-token",
/// DisplayName = "SCIM Token display Name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkforcePool(ctx, "pool", &iam.WorkforcePoolArgs{
/// WorkforcePoolId: pulumi.String("example-pool"),
/// Parent:          pulumi.String("organizations/123456789"),
/// Location:        pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// provider, err := iam.NewWorkforcePoolProvider(ctx, "provider", &iam.WorkforcePoolProviderArgs{
/// Location:        pulumi.String("global"),
/// WorkforcePoolId: pool.WorkforcePoolId,
/// ProviderId:      pulumi.String("example-prvdr"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject": pulumi.String("assertion.sub"),
/// },
/// Oidc: &iam.WorkforcePoolProviderOidcArgs{
/// IssuerUri: pulumi.String("https://accounts.thirdparty.com"),
/// ClientId:  pulumi.String("client-id"),
/// ClientSecret: &iam.WorkforcePoolProviderOidcClientSecretArgs{
/// Value: &iam.WorkforcePoolProviderOidcClientSecretValueArgs{
/// PlainText: pulumi.String("client-secret"),
/// },
/// },
/// WebSsoConfig: &iam.WorkforcePoolProviderOidcWebSsoConfigArgs{
/// ResponseType:            pulumi.String("CODE"),
/// AssertionClaimsBehavior: pulumi.String("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS"),
/// AdditionalScopes: pulumi.StringArray{
/// pulumi.String("groups"),
/// pulumi.String("roles"),
/// },
/// },
/// },
/// DisplayName:        pulumi.String("Display name"),
/// Description:        pulumi.String("A sample OIDC workforce pool provider."),
/// Disabled:           pulumi.Bool(false),
/// AttributeCondition: pulumi.String("true"),
/// })
/// if err != nil {
/// return err
/// }
/// tenant, err := iam.NewWorkforcePoolProviderScimTenant(ctx, "tenant", &iam.WorkforcePoolProviderScimTenantArgs{
/// Location:        pulumi.String("global"),
/// WorkforcePoolId: pool.WorkforcePoolId,
/// ProviderId:      provider.ProviderId,
/// ScimTenantId:    pulumi.String("example-tenant"),
/// DisplayName:     pulumi.String("SCIM Tenant display Name"),
/// Description:     pulumi.String("A SCIM Tenant for IAM Workforce Pool Provider"),
/// ClaimMapping: pulumi.StringMap{
/// "google.subject": pulumi.String("user.externalId"),
/// "google.group":   pulumi.String("group.externalId"),
/// },
/// HardDelete: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkforcePoolProviderScimToken(ctx, "example", &iam.WorkforcePoolProviderScimTokenArgs{
/// Location:        pulumi.String("global"),
/// WorkforcePoolId: pool.WorkforcePoolId,
/// ProviderId:      provider.ProviderId,
/// ScimTenantId:    tenant.ScimTenantId,
/// ScimTokenId:     pulumi.String("example-scim-token"),
/// DisplayName:     pulumi.String("SCIM Token display Name"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.iam.WorkforcePoolProviderScimToken;
/// import com.pulumi.gcp.iam.WorkforcePoolProviderScimTokenArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var pool = new WorkforcePool("pool", WorkforcePoolArgs.builder()
/// .workforcePoolId("example-pool")
/// .parent("organizations/123456789")
/// .location("global")
/// .build());
///
/// var provider = new WorkforcePoolProvider("provider", WorkforcePoolProviderArgs.builder()
/// .location("global")
/// .workforcePoolId(pool.workforcePoolId())
/// .providerId("example-prvdr")
/// .attributeMapping(Map.of("google.subject", "assertion.sub"))
/// .oidc(WorkforcePoolProviderOidcArgs.builder()
/// .issuerUri("https://accounts.thirdparty.com")
/// .clientId("client-id")
/// .clientSecret(WorkforcePoolProviderOidcClientSecretArgs.builder()
/// .value(WorkforcePoolProviderOidcClientSecretValueArgs.builder()
/// .plainText("client-secret")
/// .build())
/// .build())
/// .webSsoConfig(WorkforcePoolProviderOidcWebSsoConfigArgs.builder()
/// .responseType("CODE")
/// .assertionClaimsBehavior("MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS")
/// .additionalScopes(
/// "groups",
/// "roles")
/// .build())
/// .build())
/// .displayName("Display name")
/// .description("A sample OIDC workforce pool provider.")
/// .disabled(false)
/// .attributeCondition("true")
/// .build());
///
/// var tenant = new WorkforcePoolProviderScimTenant("tenant", WorkforcePoolProviderScimTenantArgs.builder()
/// .location("global")
/// .workforcePoolId(pool.workforcePoolId())
/// .providerId(provider.providerId())
/// .scimTenantId("example-tenant")
/// .displayName("SCIM Tenant display Name")
/// .description("A SCIM Tenant for IAM Workforce Pool Provider")
/// .claimMapping(Map.ofEntries(
/// Map.entry("google.subject", "user.externalId"),
/// Map.entry("google.group", "group.externalId")
/// ))
/// .hardDelete(true)
/// .build());
///
/// var example = new WorkforcePoolProviderScimToken("example", WorkforcePoolProviderScimTokenArgs.builder()
/// .location("global")
/// .workforcePoolId(pool.workforcePoolId())
/// .providerId(provider.providerId())
/// .scimTenantId(tenant.scimTenantId())
/// .scimTokenId("example-scim-token")
/// .displayName("SCIM Token display Name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkforcePool
/// properties:
/// workforcePoolId: example-pool
/// parent: organizations/123456789
/// location: global
/// provider:
/// type: gcp:iam:WorkforcePoolProvider
/// properties:
/// location: global
/// workforcePoolId: ${pool.workforcePoolId}
/// providerId: example-prvdr
/// attributeMapping:
/// google.subject: assertion.sub
/// oidc:
/// issuerUri: https://accounts.thirdparty.com
/// clientId: client-id
/// clientSecret:
/// value:
/// plainText: client-secret
/// webSsoConfig:
/// responseType: CODE
/// assertionClaimsBehavior: MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS
/// additionalScopes:
/// - groups
/// - roles
/// displayName: Display name
/// description: A sample OIDC workforce pool provider.
/// disabled: false
/// attributeCondition: 'true'
/// tenant:
/// type: gcp:iam:WorkforcePoolProviderScimTenant
/// properties:
/// location: global
/// workforcePoolId: ${pool.workforcePoolId}
/// providerId: ${provider.providerId}
/// scimTenantId: example-tenant
/// displayName: SCIM Tenant display Name
/// description: A SCIM Tenant for IAM Workforce Pool Provider
/// claimMapping:
/// google.subject: user.externalId
/// google.group: group.externalId
/// hardDelete: true # state, base_uri, purge_time and service_agent are output only, not settable
/// example:
/// type: gcp:iam:WorkforcePoolProviderScimToken
/// properties:
/// location: global
/// workforcePoolId: ${pool.workforcePoolId}
/// providerId: ${provider.providerId}
/// scimTenantId: ${tenant.scimTenantId}
/// scimTokenId: example-scim-token
/// displayName: SCIM Token display Name
/// ```
/// <!--End PulumiCodeChooser -->
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
    this.displayName = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.providerId = Output.createUnknown<String>();
    this.scimTenantId = Output.createUnknown<String>();
    this.scimTokenId = Output.createUnknown<String>();
    this.securityToken = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.workforcePoolId = Output.createUnknown<String>();
  }
}
