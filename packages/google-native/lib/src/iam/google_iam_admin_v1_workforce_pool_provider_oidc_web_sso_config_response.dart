// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for web single sign-on for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse {
  /// Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested. Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  final List<String> additionalScopes;
  /// The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  final String assertionClaimsBehavior;
  /// The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  final String responseType;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse].
  /// [additionalScopes] Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested. Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  /// [assertionClaimsBehavior] The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  /// [responseType] The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse({
    required this.additionalScopes,
    required this.assertionClaimsBehavior,
    required this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalScopes': additionalScopes,
      'assertionClaimsBehavior': assertionClaimsBehavior,
      'responseType': responseType,
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse(
      additionalScopes: (map['additionalScopes'] as List).cast<String>(),
      assertionClaimsBehavior: map['assertionClaimsBehavior'] as String,
      responseType: map['responseType'] as String,
    );
  }
}

