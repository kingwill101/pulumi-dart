// ignore_for_file: unused_element, unnecessary_cast

class WorkforcePoolProviderOidcWebSsoConfig {
  /// Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested.
  /// Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  ///
  /// <a name="nested_extra_attributes_oauth2_client"></a>The `extra_attributes_oauth2_client` block supports:
  final List<String>? additionalScopes;

  /// The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
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

  /// Creates a new [WorkforcePoolProviderOidcWebSsoConfig].
  /// [additionalScopes] Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested.
  /// [assertionClaimsBehavior] The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  /// [responseType] The Response Type to request for in the OIDC Authorization Request for web sign-in.
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
