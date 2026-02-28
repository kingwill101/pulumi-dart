import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_idp_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sp_config_response.dart';
import 'inbound_saml_config_args.dart';

/// Create an inbound SAML configuration for an Identity Toolkit project.
class InboundSamlConfig extends pulumi.CustomResource {
  /// The config's display name set by developers.
  late final pulumi.Output<String> displayName;
  /// True if allows the user to sign in with the provider.
  late final pulumi.Output<bool> enabled;
  /// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  late final pulumi.Output<GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse> idpConfig;
  /// The id to use for this config.
  late final pulumi.Output<String?> inboundSamlConfigId;
  /// The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  late final pulumi.Output<GoogleCloudIdentitytoolkitAdminV2SpConfigResponse> spConfig;
  late final pulumi.Output<String> tenantId;

  /// Creates a new [InboundSamlConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSamlConfig]. {@macro pulumi_identitytoolkit_v2_inbound_saml_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSamlConfig(
    String name, {
    InboundSamlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:InboundSamlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool>('enabled');
    this.idpConfig = registerOutput<GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse>('idpConfig');
    this.inboundSamlConfigId = registerOutput<String?>('inboundSamlConfigId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spConfig = registerOutput<GoogleCloudIdentitytoolkitAdminV2SpConfigResponse>('spConfig');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
