// ignore_for_file: unused_element, unnecessary_cast

/// Represents the service account which can be used to generate access token for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse {
  /// A space-delimited list of requested scope permissions.
  final String scope;

  /// Name of the service account that has the permission to make the request.
  final String serviceAccount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse].
  /// [scope] A space-delimited list of requested scope permissions.
  /// [serviceAccount] Name of the service account that has the permission to make the request.
  GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse({
    required this.scope,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scope': scope, 'serviceAccount': serviceAccount};
  }

  factory GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse(
      scope: map['scope'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
