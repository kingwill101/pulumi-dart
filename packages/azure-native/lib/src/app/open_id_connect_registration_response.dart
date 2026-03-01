// ignore_for_file: unused_element, unnecessary_cast

import 'open_id_connect_client_credential_response.dart';
import 'open_id_connect_config_response.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistrationResponse {
  /// The authentication credentials of the custom Open ID Connect provider.
  final OpenIdConnectClientCredentialResponse? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final String? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final OpenIdConnectConfigResponse? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistrationResponse].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  OpenIdConnectRegistrationResponse({
    this.clientCredential,
    this.clientId,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredential': ?clientCredential == null ? null : clientCredential!.toMap(),
      'clientId': ?clientId,
      'openIdConnectConfiguration': ?openIdConnectConfiguration == null ? null : openIdConnectConfiguration!.toMap(),
    };
  }

  factory OpenIdConnectRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistrationResponse(
      clientCredential: map['clientCredential'] == null ? null : OpenIdConnectClientCredentialResponse.fromMap((map['clientCredential'] as Map).cast<String, dynamic>()),
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      openIdConnectConfiguration: map['openIdConnectConfiguration'] == null ? null : OpenIdConnectConfigResponse.fromMap((map['openIdConnectConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

