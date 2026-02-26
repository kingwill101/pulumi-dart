// ignore_for_file: unused_element, unnecessary_cast

class WorkforcePoolProviderOidcWebSsoConfig {
  /// Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the <span pulumi-lang-nodejs="`openid`" pulumi-lang-dotnet="`Openid`" pulumi-lang-go="`openid`" pulumi-lang-python="`openid`" pulumi-lang-yaml="`openid`" pulumi-lang-java="`openid`">`openid`</span>, <span pulumi-lang-nodejs="`profile`" pulumi-lang-dotnet="`Profile`" pulumi-lang-go="`profile`" pulumi-lang-python="`profile`" pulumi-lang-yaml="`profile`" pulumi-lang-java="`profile`">`profile`</span> and <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> scopes that are supported by the identity provider are requested.
  /// Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedExtraAttributesOauth2Client"" pulumi-lang-dotnet=""NestedExtraAttributesOauth2Client"" pulumi-lang-go=""nestedExtraAttributesOauth2Client"" pulumi-lang-python=""nested_extra_attributes_oauth2_client"" pulumi-lang-yaml=""nestedExtraAttributesOauth2Client"" pulumi-lang-java=""nestedExtraAttributesOauth2Client"">"nested_extra_attributes_oauth2_client"</span>></a>The <span pulumi-lang-nodejs="`extraAttributesOauth2Client`" pulumi-lang-dotnet="`ExtraAttributesOauth2Client`" pulumi-lang-go="`extraAttributesOauth2Client`" pulumi-lang-python="`extra_attributes_oauth2_client`" pulumi-lang-yaml="`extraAttributesOauth2Client`" pulumi-lang-java="`extraAttributesOauth2Client`">`extra_attributes_oauth2_client`</span> block supports:
  final List<String>? additionalScopes;

  /// The behavior for how OIDC Claims are included in the <span pulumi-lang-nodejs="`assertion`" pulumi-lang-dotnet="`Assertion`" pulumi-lang-go="`assertion`" pulumi-lang-python="`assertion`" pulumi-lang-yaml="`assertion`" pulumi-lang-java="`assertion`">`assertion`</span> object used for attribute mapping and attribute condition.
  /// * MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS: Merge the UserInfo Endpoint Claims with ID Token Claims, preferring UserInfo Claim Values for the same Claim Name. This option is available only for the Authorization Code Flow.
  /// * ONLY_ID_TOKEN_CLAIMS: Only include ID Token Claims.
  /// Possible values are: `MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS`, `ONLY_ID_TOKEN_CLAIMS`.
  final String assertionClaimsBehavior;

  /// The Response Type to request for in the OIDC Authorization Request for web sign-in.
  /// The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  /// * CODE: The `response_type=code` selection uses the Authorization Code Flow for web sign-in. Requires a configured client secret.
  /// * ID_TOKEN: The `response_type=id_token` selection uses the Implicit Flow for web sign-in.
  /// Possible values are: `CODE`, `ID_TOKEN`.
  final String responseType;

  WorkforcePoolProviderOidcWebSsoConfig({
    this.additionalScopes,
    required this.assertionClaimsBehavior,
    required this.responseType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalScopesValue = additionalScopes;
    if (additionalScopesValue != null) {
      map['additionalScopes'] = additionalScopesValue;
    }
    map['assertionClaimsBehavior'] = assertionClaimsBehavior;
    map['responseType'] = responseType;
    return map;
  }

  factory WorkforcePoolProviderOidcWebSsoConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderOidcWebSsoConfig(
      additionalScopes: map['additionalScopes'] == null
          ? null
          : (map['additionalScopes'] as List).cast<String>(),
      assertionClaimsBehavior: map['assertionClaimsBehavior'] as String,
      responseType: map['responseType'] as String,
    );
  }
}
