// ignore_for_file: unused_element, unnecessary_cast


/// Entra Authentication configuration.
class EntraAuthenticationResponse {
  /// The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity.
  final String? clientId;
  /// The method used for Entra authentication
  final String? identityType;

  /// Creates a new [EntraAuthenticationResponse].
  /// [clientId] The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity.
  /// [identityType] The method used for Entra authentication
  EntraAuthenticationResponse({
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
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
    );
  }
}

