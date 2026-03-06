// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API OAuth2 Authentication settings details.
class OpenIdAuthenticationSettingsContract {
  /// How to send token to the server.
  final pulumi.Input<List<String>>? bearerTokenSendingMethods;
  /// OAuth authorization server identifier.
  final pulumi.Input<String>? openidProviderId;

  /// Creates a new [OpenIdAuthenticationSettingsContract].
  /// [bearerTokenSendingMethods] How to send token to the server.
  /// [openidProviderId] OAuth authorization server identifier.
  const OpenIdAuthenticationSettingsContract({
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
      bearerTokenSendingMethods: (() { final guardedValue = map['bearerTokenSendingMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      openidProviderId: (() { final guardedValue = map['openidProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

