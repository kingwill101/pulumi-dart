import 'package:pulumi/pulumi.dart' as pulumi;
import '../inbound_saml_config_idp_config/inbound_saml_config_idp_config.dart';
import '../inbound_saml_config_sp_config/inbound_saml_config_sp_config.dart';
import 'inbound_saml_config_args.dart';

/// Inbound SAML configuration for a Identity Toolkit project.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Inbound Saml Config Basic
///
///
///
///
/// ## Import
///
/// InboundSamlConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/inboundSamlConfigs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InboundSamlConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default projects/{{project}}/inboundSamlConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/inboundSamlConfig:InboundSamlConfig default {{name}}
/// ```
class InboundSamlConfig extends pulumi.CustomResource {
  /// Human friendly display name.
  late final pulumi.Output<String> displayName;

  /// If this config allows users to sign in with the provider.
  late final pulumi.Output<bool?> enabled;

  /// SAML IdP configuration when the project acts as the relying party
  /// Structure is documented below.
  late final pulumi.Output<InboundSamlConfigIdpConfig> idpConfig;

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
  late final pulumi.Output<InboundSamlConfigSpConfig> spConfig;

  InboundSamlConfig(
    String name, {
    InboundSamlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/inboundSamlConfig:InboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.idpConfig = registerOutput<InboundSamlConfigIdpConfig>('idpConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spConfig = registerOutput<InboundSamlConfigSpConfig>('spConfig');
  }
}
