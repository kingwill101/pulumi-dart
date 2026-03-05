// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_source_configuration_cognito_user_pool_configuration.dart';
import 'identity_source_configuration_open_id_connect_configuration.dart';

class IdentitySourceConfiguration {
  /// Specifies the configuration details of an Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. See Cognito User Pool Configuration below.
  final pulumi.Input<IdentitySourceConfigurationCognitoUserPoolConfiguration>? cognitoUserPoolConfiguration;
  /// Specifies the configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. See Open ID Connect Configuration below.
  final pulumi.Input<IdentitySourceConfigurationOpenIdConnectConfiguration>? openIdConnectConfiguration;

  /// Creates a new [IdentitySourceConfiguration].
  /// [cognitoUserPoolConfiguration] Specifies the configuration details of an Amazon Cognito user pool that Verified Permissions can use as a source of authenticated identities as entities. See Cognito User Pool Configuration below.
  /// [openIdConnectConfiguration] Specifies the configuration details of an OpenID Connect (OIDC) identity provider, or identity source, that Verified Permissions can use to generate entities from authenticated identities. See Open ID Connect Configuration below.
  IdentitySourceConfiguration({
    this.cognitoUserPoolConfiguration,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitoUserPoolConfiguration': ?pulumi.Input.mapOptionalInputValue<IdentitySourceConfigurationCognitoUserPoolConfiguration, Map<String, dynamic>>(cognitoUserPoolConfiguration, (value) => value.toMap()),
      'openIdConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<IdentitySourceConfigurationOpenIdConnectConfiguration, Map<String, dynamic>>(openIdConnectConfiguration, (value) => value.toMap()),
    };
  }

  factory IdentitySourceConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfiguration(
      cognitoUserPoolConfiguration: (() { final guardedValue = map['cognitoUserPoolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentitySourceConfigurationCognitoUserPoolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openIdConnectConfiguration: (() { final guardedValue = map['openIdConnectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentitySourceConfigurationOpenIdConnectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

