// ignore_for_file: unused_element, unnecessary_cast

/// Represents the service account which can be used to generate access token for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse {
  /// A space-delimited list of requested scope permissions.
  final String scope;

  /// Name of the service account that has the permission to make the request.
  final String serviceAccount;

  GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse({
    required this.scope,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    map['serviceAccount'] = serviceAccount;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse(
      scope: map['scope'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
