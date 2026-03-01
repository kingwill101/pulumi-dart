// ignore_for_file: unused_element, unnecessary_cast

import 'open_id_connect_client_credential.dart';
import 'open_id_connect_config.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistration {
  /// The authentication credentials of the custom Open ID Connect provider.
  final OpenIdConnectClientCredential? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final String? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final OpenIdConnectConfig? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistration].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  OpenIdConnectRegistration({
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

  factory OpenIdConnectRegistration.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistration(
      clientCredential: map['clientCredential'] == null ? null : OpenIdConnectClientCredential.fromMap((map['clientCredential'] as Map).cast<String, dynamic>()),
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      openIdConnectConfiguration: map['openIdConnectConfiguration'] == null ? null : OpenIdConnectConfig.fromMap((map['openIdConnectConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

