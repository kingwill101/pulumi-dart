// ignore_for_file: unused_element, unnecessary_cast


/// API OAuth2 Authentication settings details.
class OpenIdAuthenticationSettingsContractResponse {
  /// How to send token to the server.
  final List<String>? bearerTokenSendingMethods;
  /// OAuth authorization server identifier.
  final String? openidProviderId;

  /// Creates a new [OpenIdAuthenticationSettingsContractResponse].
  /// [bearerTokenSendingMethods] How to send token to the server.
  /// [openidProviderId] OAuth authorization server identifier.
  OpenIdAuthenticationSettingsContractResponse({
    this.bearerTokenSendingMethods,
    this.openidProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'openidProviderId': ?openidProviderId,
    };
  }

  factory OpenIdAuthenticationSettingsContractResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdAuthenticationSettingsContractResponse(
      bearerTokenSendingMethods: map['bearerTokenSendingMethods'] == null ? null : (map['bearerTokenSendingMethods'] as List).cast<String>(),
      openidProviderId: map['openidProviderId'] == null ? null : map['openidProviderId'] as String,
    );
  }
}

