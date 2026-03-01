// ignore_for_file: unused_element, unnecessary_cast


/// API OAuth2 Authentication settings details.
class OpenIdAuthenticationSettingsContract {
  /// How to send token to the server.
  final List<String>? bearerTokenSendingMethods;
  /// OAuth authorization server identifier.
  final String? openidProviderId;

  /// Creates a new [OpenIdAuthenticationSettingsContract].
  /// [bearerTokenSendingMethods] How to send token to the server.
  /// [openidProviderId] OAuth authorization server identifier.
  OpenIdAuthenticationSettingsContract({
    this.bearerTokenSendingMethods,
    this.openidProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'openidProviderId': ?openidProviderId,
    };
  }

  factory OpenIdAuthenticationSettingsContract.fromMap(Map<String, dynamic> map) {
    return OpenIdAuthenticationSettingsContract(
      bearerTokenSendingMethods: map['bearerTokenSendingMethods'] == null ? null : (map['bearerTokenSendingMethods'] as List).cast<String>(),
      openidProviderId: map['openidProviderId'] == null ? null : map['openidProviderId'] as String,
    );
  }
}

