import 'package:pulumi/pulumi.dart';
import 'open_id_connect_provider_args.dart';

/// Provides an IAM OpenID Connect provider.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Without A Thumbprint
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IAM OpenID Connect provider.
///
///
/// Using `pulumi import`, import IAM OpenID Connect Providers using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/openIdConnectProvider:OpenIdConnectProvider default arn:aws:iam::123456789012:oidc-provider/accounts.google.com
/// ```
class OpenIdConnectProvider extends CustomResource {
  /// ARN assigned by AWS for this provider.
  late final Output<String> arn;

  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  late final Output<List<String>> clientIdLists;

  /// Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  late final Output<List<String>> thumbprintLists;

  /// URL of the identity provider, corresponding to the `iss` claim.
  late final Output<String> url;

  OpenIdConnectProvider(
    String name, {
    OpenIdConnectProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/openIdConnectProvider:OpenIdConnectProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clientIdLists = registerOutput<List<String>>('clientIdLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thumbprintLists = registerOutput<List<String>>('thumbprintLists');
    this.url = registerOutput<String>('url');
  }
}
