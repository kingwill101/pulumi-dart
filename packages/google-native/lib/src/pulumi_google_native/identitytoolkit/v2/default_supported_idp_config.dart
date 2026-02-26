import 'package:pulumi/pulumi.dart';
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
    this.appleSignInConfig = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse>();
    this.clientId = Output.createUnknown<String>();
    this.clientSecret = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool>();
    this.idpId = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tenantId = Output.createUnknown<String>();
  }
}
