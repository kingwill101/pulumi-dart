// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_provider_oauth2_grant_types.dart';

/// OAuth2 settings details
class AuthorizationProviderOAuth2Settings {
  /// OAuth2 settings
  final pulumi.Input<AuthorizationProviderOAuth2GrantTypes>? grantTypes;
  /// Redirect URL to be set in the OAuth application.
  final pulumi.Input<String>? redirectUrl;

  /// Creates a new [AuthorizationProviderOAuth2Settings].
  /// [grantTypes] OAuth2 settings
  /// [redirectUrl] Redirect URL to be set in the OAuth application.
  const AuthorizationProviderOAuth2Settings({
    this.grantTypes,
    this.redirectUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantTypes': ?pulumi.Input.mapOptionalInputValue<AuthorizationProviderOAuth2GrantTypes, Map<String, dynamic>>(grantTypes, (value) => value.toMap()),
      'redirectUrl': ?redirectUrl,
    };
  }

  factory AuthorizationProviderOAuth2Settings.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderOAuth2Settings(
      grantTypes: (() { final guardedValue = map['grantTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationProviderOAuth2GrantTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

