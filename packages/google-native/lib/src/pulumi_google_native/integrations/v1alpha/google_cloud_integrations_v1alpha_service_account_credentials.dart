// ignore_for_file: unused_element, unnecessary_cast

/// Represents the service account which can be used to generate access token for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentials {
  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// Name of the service account that has the permission to make the request.
  final String? serviceAccount;

  GoogleCloudIntegrationsV1alphaServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaServiceAccountCredentials(
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
