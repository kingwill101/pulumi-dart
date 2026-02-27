import 'package:pulumi/pulumi.dart' as pulumi;
import '../tenant_inbound_saml_config_idp_config/tenant_inbound_saml_config_idp_config.dart';
import '../tenant_inbound_saml_config_sp_config/tenant_inbound_saml_config_sp_config.dart';
import 'tenant_inbound_saml_config_args.dart';

/// Inbound SAML configuration for a Identity Toolkit tenant.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Inbound Saml Config Basic
///
///
///
///
/// ## Import
///
/// TenantInboundSamlConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/inboundSamlConfigs/{{name}}`
///
/// * `{{project}}/{{tenant}}/{{name}}`
///
/// * `{{tenant}}/{{name}}`
///
/// When using the `pulumi import` command, TenantInboundSamlConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default projects/{{project}}/tenants/{{tenant}}/inboundSamlConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default {{project}}/{{tenant}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig default {{tenant}}/{{name}}
/// ```
class TenantInboundSamlConfig extends pulumi.CustomResource {
  /// Human friendly display name.
  late final pulumi.Output<String> displayName;

  /// If this config allows users to sign in with the provider.
  late final pulumi.Output<bool?> enabled;

  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  late final pulumi.Output<TenantInboundSamlConfigIdpConfig> idpConfig;

  /// The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,
  /// hyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an
  /// alphanumeric character, and have at least 2 characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// SAML SP (Service Provider) configuration when the project acts as the relying party to receive
  /// and accept an authentication assertion issued by a SAML identity provider.
  /// Structure is documented below.
  late final pulumi.Output<TenantInboundSamlConfigSpConfig> spConfig;

  /// The name of the tenant where this inbound SAML config resource exists
  late final pulumi.Output<String> tenant;

  TenantInboundSamlConfig(
    String name, {
    TenantInboundSamlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenantInboundSamlConfig:TenantInboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.idpConfig =
        registerOutput<TenantInboundSamlConfigIdpConfig>('idpConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spConfig = registerOutput<TenantInboundSamlConfigSpConfig>('spConfig');
    this.tenant = registerOutput<String>('tenant');
  }
}
