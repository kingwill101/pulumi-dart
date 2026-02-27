import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_identitytoolkit_admin_v2_idp_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sp_config_response.dart';
import 'inbound_saml_config_args.dart';

/// Create an inbound SAML configuration for an Identity Toolkit project.
class InboundSamlConfig extends CustomResource {
  /// The config's display name set by developers.
  late final Output<String> displayName;

  /// True if allows the user to sign in with the provider.
  late final Output<bool> enabled;

  /// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  late final Output<GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse>
      idpConfig;

  /// The id to use for this config.
  late final Output<String?> inboundSamlConfigId;

  /// The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  late final Output<String> name;
  late final Output<String> project;

  /// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  late final Output<GoogleCloudIdentitytoolkitAdminV2SpConfigResponse> spConfig;
  late final Output<String> tenantId;

  InboundSamlConfig(
    String name, {
    InboundSamlConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:InboundSamlConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enabled = registerOutput<bool>('enabled');
    this.idpConfig =
        registerOutput<GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse>(
            'idpConfig');
    this.inboundSamlConfigId = registerOutput<String?>('inboundSamlConfigId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spConfig =
        registerOutput<GoogleCloudIdentitytoolkitAdminV2SpConfigResponse>(
            'spConfig');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
