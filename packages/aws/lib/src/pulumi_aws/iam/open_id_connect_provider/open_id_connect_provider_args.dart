// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OpenIdConnectProvider.
class OpenIdConnectProviderArgs {
  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  final Input<List<String>> clientIdLists;

  /// Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  final Input<List<String>>? thumbprintLists;

  /// URL of the identity provider, corresponding to the `iss` claim.
  final Input<String> url;

  OpenIdConnectProviderArgs({
    required this.clientIdLists,
    this.tags,
    this.thumbprintLists,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientIdLists'] = clientIdLists;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final thumbprintListsValue = thumbprintLists;
    if (thumbprintListsValue != null) {
      map['thumbprintLists'] = thumbprintListsValue;
    }
    map['url'] = url;
    return map;
  }

  factory OpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderArgs(
      clientIdLists: Input.asInput<List<String>>(map['clientIdLists']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      thumbprintLists:
          Input.asOptionalInput<List<String>>(map['thumbprintLists']),
      url: Input.asInput<String>(map['url']),
    );
  }
}
