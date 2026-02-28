// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_deployed_index_auth_config_auth_provider_response.dart';

/// Used to set up the auth on the DeployedIndex's private endpoint.
class GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse {
  /// Defines the authentication provider that the DeployedIndex uses.
  final GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse
      authProvider;

  /// Creates a new [GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse].
  /// [authProvider] Defines the authentication provider that the DeployedIndex uses.
  GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse({
    required this.authProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authProvider'] = authProvider.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse(
      authProvider:
          GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse
              .fromMap((map['authProvider'] as Map).cast<String, dynamic>()),
    );
  }
}
