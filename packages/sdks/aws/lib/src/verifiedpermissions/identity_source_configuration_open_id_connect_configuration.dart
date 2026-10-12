// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_source_configuration_open_id_connect_configuration_group_configuration.dart';
import 'identity_source_configuration_open_id_connect_configuration_token_selection.dart';

class IdentitySourceConfigurationOpenIdConnectConfiguration {
  /// Descriptive string that you want to prefix to user entities from your OIDC identity provider.
  final pulumi.Input<String?>? entityIdPrefix;
  /// Type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source. See Group Configuration below.
  final pulumi.Input<IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration?>? groupConfiguration;
  /// Issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path `.well-known/openid-configuration`.
  final pulumi.Input<String> issuer;
  /// Token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source. See Token Selection below.
  final pulumi.Input<IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection> tokenSelection;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfiguration].
  /// [entityIdPrefix] Descriptive string that you want to prefix to user entities from your OIDC identity provider.
  /// [groupConfiguration] Type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source. See Group Configuration below.
  /// [issuer] Issuer URL of an OIDC identity provider. This URL must have an OIDC discovery endpoint at the path `.well-known/openid-configuration`.
  /// [tokenSelection] Token type that you want to process from your OIDC identity provider. Your policy store can process either identity (ID) or access tokens from a given OIDC identity source. See Token Selection below.
  const IdentitySourceConfigurationOpenIdConnectConfiguration({
    this.entityIdPrefix,
    this.groupConfiguration,
    required this.issuer,
    required this.tokenSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityIdPrefix': ?entityIdPrefix,
      'groupConfiguration': ?pulumi.Input.mapOptionalInputValue<IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration, Map<String, dynamic>>(groupConfiguration, (value) => value.toMap()),
      'issuer': issuer,
      'tokenSelection': pulumi.Input.mapInputValue<IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection, Map<String, dynamic>>(tokenSelection, (value) => value.toMap()),
    };
  }

  factory IdentitySourceConfigurationOpenIdConnectConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfiguration(
      entityIdPrefix: (() { final guardedValue = map['entityIdPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupConfiguration: (() { final guardedValue = map['groupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      tokenSelection: pulumi.Input.fromValue(IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection.fromMap((map['tokenSelection']! as Map).cast<String, dynamic>())),
    );
  }
}
