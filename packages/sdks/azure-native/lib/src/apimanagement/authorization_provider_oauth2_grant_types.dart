// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization Provider oauth2 grant types settings
class AuthorizationProviderOAuth2GrantTypes {
  /// OAuth2 authorization code grant parameters
  final pulumi.Input<Map<String, String>>? authorizationCode;
  /// OAuth2 client credential grant parameters
  final pulumi.Input<Map<String, String>>? clientCredentials;

  /// Creates a new [AuthorizationProviderOAuth2GrantTypes].
  /// [authorizationCode] OAuth2 authorization code grant parameters
  /// [clientCredentials] OAuth2 client credential grant parameters
  AuthorizationProviderOAuth2GrantTypes({
    this.authorizationCode,
    this.clientCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCode': ?authorizationCode,
      'clientCredentials': ?clientCredentials,
    };
  }

  factory AuthorizationProviderOAuth2GrantTypes.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderOAuth2GrantTypes(
      authorizationCode: (() { final guardedValue = map['authorizationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clientCredentials: (() { final guardedValue = map['clientCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

