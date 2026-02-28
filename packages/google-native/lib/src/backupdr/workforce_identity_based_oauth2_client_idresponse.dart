// ignore_for_file: unused_element, unnecessary_cast

/// OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,
class WorkforceIdentityBasedOAuth2ClientIDResponse {
  /// First party OAuth Client ID for Google Identities.
  final String firstPartyOauth2ClientId;

  /// Third party OAuth Client ID for External Identity Providers.
  final String thirdPartyOauth2ClientId;

  /// Creates a new [WorkforceIdentityBasedOAuth2ClientIDResponse].
  /// [firstPartyOauth2ClientId] First party OAuth Client ID for Google Identities.
  /// [thirdPartyOauth2ClientId] Third party OAuth Client ID for External Identity Providers.
  WorkforceIdentityBasedOAuth2ClientIDResponse({
    required this.firstPartyOauth2ClientId,
    required this.thirdPartyOauth2ClientId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firstPartyOauth2ClientId'] = firstPartyOauth2ClientId;
    map['thirdPartyOauth2ClientId'] = thirdPartyOauth2ClientId;
    return map;
  }

  factory WorkforceIdentityBasedOAuth2ClientIDResponse.fromMap(
      Map<String, dynamic> map) {
    return WorkforceIdentityBasedOAuth2ClientIDResponse(
      firstPartyOauth2ClientId: map['firstPartyOauth2ClientId'] as String,
      thirdPartyOauth2ClientId: map['thirdPartyOauth2ClientId'] as String,
    );
  }
}
