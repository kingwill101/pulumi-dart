import 'package:pulumi/pulumi.dart';
import 'google_cloud_identitytoolkit_admin_v2_oauth_response_type_response.dart';
import 'oauth_idp_config_args.dart';

/// Create an Oidc Idp configuration for an Identity Toolkit project.
class OauthIdpConfig extends CustomResource {
  /// The client id of an OAuth client.
  late final Output<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final Output<String> clientSecret;

  /// The config's display name set by developers.
  late final Output<String> displayName;

  /// True if allows the user to sign in with the provider.
  late final Output<bool> enabled;

  /// For OIDC Idps, the issuer identifier.
  late final Output<String> issuer;

  /// The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  late final Output<String> name;

  /// The id to use for this config.
  late final Output<String?> oauthIdpConfigId;
  late final Output<String> project;

  /// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  late final Output<GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse>
      responseType;
  late final Output<String> tenantId;

  OauthIdpConfig(
    String name, {
    OauthIdpConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:identitytoolkit/v2:OauthIdpConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientId = Output.createUnknown<String>();
    this.clientSecret = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool>();
    this.issuer = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.oauthIdpConfigId = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.responseType = Output.createUnknown<
        GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse>();
    this.tenantId = Output.createUnknown<String>();
  }
}
