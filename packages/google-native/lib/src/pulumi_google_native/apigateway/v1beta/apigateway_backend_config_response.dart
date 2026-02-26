// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for all backends.
class ApigatewayBackendConfigResponse {
  /// Google Cloud IAM service account used to sign OIDC tokens for backends that have authentication configured (https://cloud.google.com/service-infrastructure/docs/service-management/reference/rest/v1/services.configs#backend). This may either be the Service Account's email (i.e. "{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com") or its full resource name (i.e. "projects/{PROJECT}/accounts/{UNIQUE_ID}"). This is most often used when the backend is a GCP resource such as a Cloud Run Service or an IAP-secured service. Note that this token is always sent as an authorization header bearer token. The audience of the OIDC token is configured in the associated Service Config in the BackendRule option (https://github.com/googleapis/googleapis/blob/master/google/api/backend.proto#L125).
  final String googleServiceAccount;

  ApigatewayBackendConfigResponse({
    required this.googleServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleServiceAccount'] = googleServiceAccount;
    return map;
  }

  factory ApigatewayBackendConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApigatewayBackendConfigResponse(
      googleServiceAccount: map['googleServiceAccount'] as String,
    );
  }
}
