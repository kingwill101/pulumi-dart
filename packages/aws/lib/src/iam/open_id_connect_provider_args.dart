// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_open_id_connect_provider_open_id_connect_provider_args_doc}
/// The set of arguments for OpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_open_id_connect_provider_open_id_connect_provider_args_doc}
class OpenIdConnectProviderArgs {
  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  final pulumi.Input<List<String>> clientIdLists;

  /// Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  final pulumi.Input<List<String>>? thumbprintLists;

  /// URL of the identity provider, corresponding to the `iss` claim.
  final pulumi.Input<String> url;

  /// Creates a new [OpenIdConnectProviderArgs].
  /// [clientIdLists] List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  /// [tags] Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [thumbprintLists] List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  /// [url] URL of the identity provider, corresponding to the `iss` claim.
  OpenIdConnectProviderArgs({
    required List<String> clientIdLists,
    Map<String, String>? tags,
    List<String>? thumbprintLists,
    required String url,
  }) : clientIdLists = pulumi.Input.asInput<List<String>>(clientIdLists),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       thumbprintLists = pulumi.Input.asOptionalInput<List<String>>(
         thumbprintLists,
       ),
       url = pulumi.Input.asInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIdLists': clientIdLists,
      'tags': ?tags,
      'thumbprintLists': ?thumbprintLists,
      'url': url,
    };
  }

  factory OpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderArgs(
      clientIdLists: (map['clientIdLists'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      thumbprintLists: map['thumbprintLists'] == null
          ? null
          : (map['thumbprintLists'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}
