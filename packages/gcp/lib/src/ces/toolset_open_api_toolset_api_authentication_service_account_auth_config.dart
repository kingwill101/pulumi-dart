// ignore_for_file: unused_element, unnecessary_cast

class ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig {
  /// The email address of the service account used for authenticatation. CES
  /// uses this service account to exchange an access token and the access token
  /// is then sent in the `Authorization` header of the request.
  /// The service account must have the
  /// `roles/iam.serviceAccountTokenCreator` role granted to the
  /// CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String serviceAccount;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig].
  /// [serviceAccount] The email address of the service account used for authenticatation. CES
  ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount;
    return map;
  }

  factory ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig(
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
