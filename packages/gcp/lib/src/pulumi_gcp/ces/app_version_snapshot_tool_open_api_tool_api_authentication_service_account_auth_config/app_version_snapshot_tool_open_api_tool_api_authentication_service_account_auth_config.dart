// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig {
  /// (Output)
  /// The email address of the service account used for authenticatation. CES
  /// uses this service account to exchange an access token and the access token
  /// is then sent in the `Authorization` header of the request.
  /// The service account must have the
  /// `roles/iam.serviceAccountTokenCreator` role granted to the
  /// CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String? serviceAccount;

  AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig(
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
