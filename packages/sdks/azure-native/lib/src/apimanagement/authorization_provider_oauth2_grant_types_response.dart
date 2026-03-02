// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization Provider oauth2 grant types settings
class AuthorizationProviderOAuth2GrantTypesResponse {
  /// OAuth2 authorization code grant parameters
  final pulumi.Input<Map<String, String>>? authorizationCode;
  /// OAuth2 client credential grant parameters
  final pulumi.Input<Map<String, String>>? clientCredentials;

  /// Creates a new [AuthorizationProviderOAuth2GrantTypesResponse].
  /// [authorizationCode] OAuth2 authorization code grant parameters
  /// [clientCredentials] OAuth2 client credential grant parameters
  AuthorizationProviderOAuth2GrantTypesResponse({
    this.authorizationCode,
    this.clientCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCode': ?authorizationCode,
      'clientCredentials': ?clientCredentials,
    };
  }

  factory AuthorizationProviderOAuth2GrantTypesResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationProviderOAuth2GrantTypesResponse(
      authorizationCode: map['authorizationCode'] == null ? null : ((map['authorizationCode']! as Map).cast<String, String>()).input(),
      clientCredentials: map['clientCredentials'] == null ? null : ((map['clientCredentials']! as Map).cast<String, String>()).input(),
    );
  }
}

