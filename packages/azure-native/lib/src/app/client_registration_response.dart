// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the app registration for providers that have client ids and client secrets
class ClientRegistrationResponse {
  /// The Client ID of the app used for login.
  final String? clientId;
  /// The app setting name that contains the client secret.
  final String? clientSecretSettingName;

  /// Creates a new [ClientRegistrationResponse].
  /// [clientId] The Client ID of the app used for login.
  /// [clientSecretSettingName] The app setting name that contains the client secret.
  ClientRegistrationResponse({
    this.clientId,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory ClientRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return ClientRegistrationResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
    );
  }
}

