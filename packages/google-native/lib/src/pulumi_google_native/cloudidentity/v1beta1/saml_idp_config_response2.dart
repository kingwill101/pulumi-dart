// ignore_for_file: unused_element, unnecessary_cast

/// SAML IDP (identity provider) configuration.
class SamlIdpConfigResponse2 {
  /// The **Change Password URL** of the identity provider. Users will be sent to this URL when changing their passwords at `myaccount.google.com`. This takes precedence over the change password URL configured at customer-level. Must use `HTTPS`.
  final String changePasswordUri;

  /// The SAML **Entity ID** of the identity provider.
  final String entityId;

  /// The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user clicks the sign-out link on a Google page, they will be redirected to this URL. This is a pure redirect with no attached SAML `LogoutRequest` i.e. SAML single logout is not supported. Must use `HTTPS`.
  final String logoutRedirectUri;

  /// The `SingleSignOnService` endpoint location (sign-in page URL) of the identity provider. This is the URL where the `AuthnRequest` will be sent. Must use `HTTPS`. Assumed to accept the `HTTP-Redirect` binding.
  final String singleSignOnServiceUri;

  SamlIdpConfigResponse2({
    required this.changePasswordUri,
    required this.entityId,
    required this.logoutRedirectUri,
    required this.singleSignOnServiceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['changePasswordUri'] = changePasswordUri;
    map['entityId'] = entityId;
    map['logoutRedirectUri'] = logoutRedirectUri;
    map['singleSignOnServiceUri'] = singleSignOnServiceUri;
    return map;
  }

  factory SamlIdpConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SamlIdpConfigResponse2(
      changePasswordUri: map['changePasswordUri'] as String,
      entityId: map['entityId'] as String,
      logoutRedirectUri: map['logoutRedirectUri'] as String,
      singleSignOnServiceUri: map['singleSignOnServiceUri'] as String,
    );
  }
}
