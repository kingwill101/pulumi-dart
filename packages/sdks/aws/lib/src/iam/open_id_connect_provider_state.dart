// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OpenIdConnectProvider resources.
class OpenIdConnectProviderState {
  /// ARN assigned by AWS for this provider.
  final pulumi.Input<String>? arn;
  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  final pulumi.Input<List<String>>? clientIdLists;
  /// Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  final pulumi.Input<List<String>>? thumbprintLists;
  /// URL of the identity provider, corresponding to the `iss` claim.
  final pulumi.Input<String>? url;

  /// Creates a new [OpenIdConnectProviderState].
  /// [arn] ARN assigned by AWS for this provider.
  /// [clientIdLists] List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `client_id` parameter in OAuth requests.
  /// [tags] Map of resource tags for the IAM OIDC provider. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [thumbprintLists] List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprint_list` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprint_list` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprint_list` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprint_list`.
  /// [url] URL of the identity provider, corresponding to the `iss` claim.
  OpenIdConnectProviderState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? clientIdLists,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? thumbprintLists,
    pulumi.Output<String>? url,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clientIdLists = pulumi.Input.asOptionalInput<List<String>>(clientIdLists),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      thumbprintLists = pulumi.Input.asOptionalInput<List<String>>(thumbprintLists),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clientIdLists': ?clientIdLists,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'thumbprintLists': ?thumbprintLists,
      'url': ?url,
    };
  }

  factory OpenIdConnectProviderState.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clientIdLists: map['clientIdLists'] == null ? null : pulumi.Output.create<List<String>>((map['clientIdLists'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      thumbprintLists: map['thumbprintLists'] == null ? null : pulumi.Output.create<List<String>>((map['thumbprintLists'] as List).cast<String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

