import 'package:pulumi/pulumi.dart' hide Config;
import 'default_supported_idp_config_args.dart';
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config_response.dart';

/// Create a default supported Idp configuration for an Identity Toolkit project.
class DefaultSupportedIdpConfig extends CustomResource {
  /// Additional config for Apple-based projects.
  late final Output<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse>
      appleSignInConfig;

  /// OAuth client ID.
  late final Output<String> clientId;

  /// OAuth client secret.
  late final Output<String> clientSecret;

  /// True if allows the user to sign in with the provider.
  late final Output<bool> enabled;

  /// The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  late final Output<String?> idpId;

  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> tenantId;

  DefaultSupportedIdpConfig(
    String name, {
    DefaultSupportedIdpConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:DefaultSupportedIdpConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appleSignInConfig = registerOutput<
            GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse>(
        'appleSignInConfig');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool>('enabled');
    this.idpId = registerOutput<String?>('idpId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
