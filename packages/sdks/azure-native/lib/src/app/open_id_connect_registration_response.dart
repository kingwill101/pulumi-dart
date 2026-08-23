// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_client_credential_response.dart';
import 'open_id_connect_config_response.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistrationResponse {
  /// The authentication credentials of the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectClientCredentialResponse>? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final pulumi.Input<String>? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectConfigResponse>? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistrationResponse].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  const OpenIdConnectRegistrationResponse({
    this.clientCredential,
    this.clientId,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredential': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectClientCredentialResponse, Map<String, dynamic>>(clientCredential, (value) => value.toMap()),
      'clientId': ?clientId,
      'openIdConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectConfigResponse, Map<String, dynamic>>(openIdConnectConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenIdConnectRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistrationResponse(
      clientCredential: (() { final guardedValue = map['clientCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectClientCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openIdConnectConfiguration: (() { final guardedValue = map['openIdConnectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
