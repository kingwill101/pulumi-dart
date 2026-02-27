import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_default_supported_idp_config_args.dart';

/// Configurations options for the tenant for authenticating with a the standard set of Identity Toolkit-trusted IDPs.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Default Supported Idp Config Basic
///
///
///
///
/// ## Import
///
/// TenantDefaultSupportedIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}`
///
/// * `{{project}}/{{tenant}}/{{idp_id}}`
///
/// * `{{tenant}}/{{idp_id}}`
///
/// When using the `pulumi import` command, TenantDefaultSupportedIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{project}}/{{tenant}}/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{tenant}}/{{idp_id}}
/// ```
class TenantDefaultSupportedIdpConfig extends pulumi.CustomResource {
  /// OAuth client ID
  late final pulumi.Output<String> clientId;

  /// OAuth client secret
  late final pulumi.Output<String> clientSecret;

  /// If this IDP allows the user to sign in
  late final pulumi.Output<bool?> enabled;

  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  late final pulumi.Output<String> idpId;

  /// The name of the default supported IDP config resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  late final pulumi.Output<String> tenant;

  TenantDefaultSupportedIdpConfig(
    String name, {
    TenantDefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool?>('enabled');
    this.idpId = registerOutput<String>('idpId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tenant = registerOutput<String>('tenant');
  }
}
