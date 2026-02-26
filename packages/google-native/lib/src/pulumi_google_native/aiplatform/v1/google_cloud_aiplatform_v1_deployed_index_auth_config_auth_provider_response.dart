// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for an authentication provider, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse {
  /// A list of allowed JWT issuers. Each entry must be a valid Google service account, in the following format: `service-account-name@project-id.iam.gserviceaccount.com`
  final List<String> allowedIssuers;

  /// The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted.
  final List<String> audiences;

  GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse({
    required this.allowedIssuers,
    required this.audiences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIssuers'] = allowedIssuers;
    map['audiences'] = audiences;
    return map;
  }

  factory GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse(
      allowedIssuers: (map['allowedIssuers'] as List).cast<String>(),
      audiences: (map['audiences'] as List).cast<String>(),
    );
  }
}
