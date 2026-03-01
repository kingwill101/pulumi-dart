// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the registration for the Azure Static Web Apps provider
class AzureStaticWebAppsRegistration {
  /// The Client ID of the app used for login.
  final String? clientId;

  /// Creates a new [AzureStaticWebAppsRegistration].
  /// [clientId] The Client ID of the app used for login.
  AzureStaticWebAppsRegistration({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory AzureStaticWebAppsRegistration.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsRegistration(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
    );
  }
}

