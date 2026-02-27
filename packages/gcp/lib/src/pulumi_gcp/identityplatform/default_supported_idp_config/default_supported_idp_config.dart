import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_supported_idp_config_args.dart';

/// Configurations options for authenticating with a the standard set of Identity Toolkit-trusted IDPs.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Default Supported Idp Config Basic
///
///
///
///
/// ## Import
///
/// DefaultSupportedIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/defaultSupportedIdpConfigs/{{idp_id}}`
///
/// * `{{project}}/{{idp_id}}`
///
/// * `{{idp_id}}`
///
/// When using the `pulumi import` command, DefaultSupportedIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default projects/{{project}}/defaultSupportedIdpConfigs/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default {{project}}/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default {{idp_id}}
/// ```
class DefaultSupportedIdpConfig extends pulumi.CustomResource {
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

  /// The name of the DefaultSupportedIdpConfig resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  DefaultSupportedIdpConfig(
    String name, {
    DefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig',
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
  }
}
