// ignore_for_file: unused_element, unnecessary_cast

import '../identity_source_configuration_open_id_connect_configuration_group_configuration/identity_source_configuration_open_id_connect_configuration_group_configuration.dart';
import '../identity_source_configuration_open_id_connect_configuration_token_selection/identity_source_configuration_open_id_connect_configuration_token_selection.dart';

class IdentitySourceConfigurationOpenIdConnectConfiguration {
  /// A descriptive string that you want to prefix to user entities from your OIDC identity provider.
  final String? entityIdPrefix;

  /// The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source. See Group Configuration below.
  final IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration?
      groupConfiguration;

  /// The issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path `.well-known/openid-configuration`.
  final String issuer;

  /// The token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source. See Token Selection below.
  final IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection
      tokenSelection;

  IdentitySourceConfigurationOpenIdConnectConfiguration({
    this.entityIdPrefix,
    this.groupConfiguration,
    required this.issuer,
    required this.tokenSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entityIdPrefixValue = entityIdPrefix;
    if (entityIdPrefixValue != null) {
      map['entityIdPrefix'] = entityIdPrefixValue;
    }
    final groupConfigurationValue = groupConfiguration;
    if (groupConfigurationValue != null) {
      map['groupConfiguration'] = groupConfigurationValue.toMap();
    }
    map['issuer'] = issuer;
    map['tokenSelection'] = tokenSelection.toMap();
    return map;
  }

  factory IdentitySourceConfigurationOpenIdConnectConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfiguration(
      entityIdPrefix: map['entityIdPrefix'] == null
          ? null
          : map['entityIdPrefix'] as String,
      groupConfiguration: map['groupConfiguration'] == null
          ? null
          : IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration
              .fromMap(
                  (map['groupConfiguration'] as Map).cast<String, dynamic>()),
      issuer: map['issuer'] as String,
      tokenSelection:
          IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection
              .fromMap((map['tokenSelection'] as Map).cast<String, dynamic>()),
    );
  }
}
