import 'package:pulumi/pulumi.dart';
import 'tenant_oauth_idp_config_args.dart';

/// OIDC IdP configuration for a Identity Toolkit project within a tenant.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Oauth Idp Config Basic
///
///
///
///
/// ## Import
///
/// TenantOauthIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/oauthIdpConfigs/{{name}}`
///
/// * `{{project}}/{{tenant}}/{{name}}`
///
/// * `{{tenant}}/{{name}}`
///
/// When using the `pulumi import` command, TenantOauthIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default projects/{{project}}/tenants/{{tenant}}/oauthIdpConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default {{project}}/{{tenant}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig default {{tenant}}/{{name}}
/// ```
class TenantOauthIdpConfig extends CustomResource {
  /// The client id of an OAuth client.
  late final Output<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final Output<String?> clientSecret;

  /// Human friendly display name.
  late final Output<String> displayName;

  /// If this config allows users to sign in with the provider.
  late final Output<bool?> enabled;

  /// For OIDC Idps, the issuer identifier.
  late final Output<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the tenant where this OIDC IDP configuration resource exists
  late final Output<String> tenant;

  TenantOauthIdpConfig(
    String name, {
    TenantOauthIdpConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantOauthIdpConfig:TenantOauthIdpConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String?>('clientSecret');
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tenant = registerOutput<String>('tenant');
  }
}
