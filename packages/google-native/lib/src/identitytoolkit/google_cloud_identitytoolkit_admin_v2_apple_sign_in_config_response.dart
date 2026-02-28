// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_code_flow_config_response.dart';

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse {
  /// A list of Bundle ID's usable by this project
  final List<String> bundleIds;
  final GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse codeFlowConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse].
  /// [bundleIds] A list of Bundle ID's usable by this project
  /// [codeFlowConfig] Required.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse({
    required this.bundleIds,
    required this.codeFlowConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleIds'] = bundleIds;
    map['codeFlowConfig'] = codeFlowConfig.toMap();
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse(
      bundleIds: (map['bundleIds'] as List).cast<String>(),
      codeFlowConfig:
          GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse.fromMap(
              (map['codeFlowConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
