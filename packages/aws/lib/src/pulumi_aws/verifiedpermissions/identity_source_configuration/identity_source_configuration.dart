// ignore_for_file: unused_element, unnecessary_cast

import '../identity_source_configuration_cognito_user_pool_configuration/identity_source_configuration_cognito_user_pool_configuration.dart';
import '../identity_source_configuration_open_id_connect_configuration/identity_source_configuration_open_id_connect_configuration.dart';

class IdentitySourceConfiguration {
  /// Specifies the configuration details of an Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. See Cognito User Pool Configuration below.
  final IdentitySourceConfigurationCognitoUserPoolConfiguration?
      cognitoUserPoolConfiguration;

  /// Specifies the configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. See Open ID Connect Configuration below.
  final IdentitySourceConfigurationOpenIdConnectConfiguration?
      openIdConnectConfiguration;

  IdentitySourceConfiguration({
    this.cognitoUserPoolConfiguration,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cognitoUserPoolConfigurationValue = cognitoUserPoolConfiguration;
    if (cognitoUserPoolConfigurationValue != null) {
      map['cognitoUserPoolConfiguration'] =
          cognitoUserPoolConfigurationValue.toMap();
    }
    final openIdConnectConfigurationValue = openIdConnectConfiguration;
    if (openIdConnectConfigurationValue != null) {
      map['openIdConnectConfiguration'] =
          openIdConnectConfigurationValue.toMap();
    }
    return map;
  }

  factory IdentitySourceConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfiguration(
      cognitoUserPoolConfiguration: map['cognitoUserPoolConfiguration'] == null
          ? null
          : IdentitySourceConfigurationCognitoUserPoolConfiguration.fromMap(
              (map['cognitoUserPoolConfiguration'] as Map)
                  .cast<String, dynamic>()),
      openIdConnectConfiguration: map['openIdConnectConfiguration'] == null
          ? null
          : IdentitySourceConfigurationOpenIdConnectConfiguration.fromMap(
              (map['openIdConnectConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
