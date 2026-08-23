// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entra Authentication configuration.
class EntraAuthenticationResponse {
  /// The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity.
  final pulumi.Input<String>? clientId;
  /// The method used for Entra authentication
  final pulumi.Input<String>? identityType;

  /// Creates a new [EntraAuthenticationResponse].
  /// [clientId] The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity.
  /// [identityType] The method used for Entra authentication
  const EntraAuthenticationResponse({
    this.clientId,
    this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'identityType': ?identityType,
    };
  }

  factory EntraAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return EntraAuthenticationResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
