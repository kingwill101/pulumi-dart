import 'package:pulumi/pulumi.dart' as pulumi;
import '../oauth_idp_config_response_type/oauth_idp_config_response_type.dart';
import 'oauth_idp_config_args.dart';

/// OIDC IdP configuration for a Identity Toolkit project.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Oauth Idp Config Basic
///
///
///
///
/// ## Import
///
/// OauthIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/oauthIdpConfigs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, OauthIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default projects/{{project}}/oauthIdpConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/oauthIdpConfig:OauthIdpConfig default {{name}}
/// ```
class OauthIdpConfig extends pulumi.CustomResource {
  /// The client id of an OAuth client.
  late final pulumi.Output<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  late final pulumi.Output<String?> clientSecret;

  /// Human friendly display name.
  late final pulumi.Output<String?> displayName;

  /// If this config allows users to sign in with the provider.
  late final pulumi.Output<bool?> enabled;

  /// For OIDC Idps, the issuer identifier.
  late final pulumi.Output<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  late final pulumi.Output<OauthIdpConfigResponseType?> responseType;

  OauthIdpConfig(
    String name, {
    OauthIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/oauthIdpConfig:OauthIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String?>('clientSecret');
    this.displayName = registerOutput<String?>('displayName');
    this.enabled = registerOutput<bool?>('enabled');
    this.issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.responseType =
        registerOutput<OauthIdpConfigResponseType?>('responseType');
  }
}
