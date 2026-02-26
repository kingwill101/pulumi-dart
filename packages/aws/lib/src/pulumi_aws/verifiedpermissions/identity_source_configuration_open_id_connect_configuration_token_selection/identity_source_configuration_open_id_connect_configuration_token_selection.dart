// ignore_for_file: unused_element, unnecessary_cast

import '../identity_source_configuration_open_id_connect_configuration_token_selection_access_token_only/identity_source_configuration_open_id_connect_configuration_token_selection_access_token_only.dart';
import '../identity_source_configuration_open_id_connect_configuration_token_selection_identity_token_only/identity_source_configuration_open_id_connect_configuration_token_selection_identity_token_only.dart';

class IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection {
  /// The OIDC configuration for processing access tokens. See Access Token Only below.
  final IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly?
      accessTokenOnly;

  /// The OIDC configuration for processing identity (ID) tokens. See Identity Token Only below.
  final IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly?
      identityTokenOnly;

  IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection({
    this.accessTokenOnly,
    this.identityTokenOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenOnlyValue = accessTokenOnly;
    if (accessTokenOnlyValue != null) {
      map['accessTokenOnly'] = accessTokenOnlyValue.toMap();
    }
    final identityTokenOnlyValue = identityTokenOnly;
    if (identityTokenOnlyValue != null) {
      map['identityTokenOnly'] = identityTokenOnlyValue.toMap();
    }
    return map;
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection(
      accessTokenOnly: map['accessTokenOnly'] == null
          ? null
          : IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly
              .fromMap((map['accessTokenOnly'] as Map).cast<String, dynamic>()),
      identityTokenOnly: map['identityTokenOnly'] == null
          ? null
          : IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly
              .fromMap(
                  (map['identityTokenOnly'] as Map).cast<String, dynamic>()),
    );
  }
}
