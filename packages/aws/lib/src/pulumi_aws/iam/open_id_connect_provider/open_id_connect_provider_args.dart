// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OpenIdConnectProvider.
class OpenIdConnectProviderArgs {
  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the <span pulumi-lang-nodejs="`clientId`" pulumi-lang-dotnet="`ClientId`" pulumi-lang-go="`clientId`" pulumi-lang-python="`client_id`" pulumi-lang-yaml="`clientId`" pulumi-lang-java="`clientId`">`client_id`</span> parameter in OAuth requests.
  final Input<List<String>> clientIdLists;

  /// Map of resource tags for the IAM OIDC provider. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is retained in the configuration but not used for verification. For other IdPs, if no <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an <span pulumi-lang-nodejs="`aws.iam.OpenIdConnectProvider`" pulumi-lang-dotnet="`aws.iam.OpenIdConnectProvider`" pulumi-lang-go="`iam.OpenIdConnectProvider`" pulumi-lang-python="`iam.OpenIdConnectProvider`" pulumi-lang-yaml="`aws.iam.OpenIdConnectProvider`" pulumi-lang-java="`aws.iam.OpenIdConnectProvider`">`aws.iam.OpenIdConnectProvider`</span> without a <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span>.
  final Input<List<String>>? thumbprintLists;

  /// URL of the identity provider, corresponding to the <span pulumi-lang-nodejs="`iss`" pulumi-lang-dotnet="`Iss`" pulumi-lang-go="`iss`" pulumi-lang-python="`iss`" pulumi-lang-yaml="`iss`" pulumi-lang-java="`iss`">`iss`</span> claim.
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
