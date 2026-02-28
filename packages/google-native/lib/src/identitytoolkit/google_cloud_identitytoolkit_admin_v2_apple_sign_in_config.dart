// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_code_flow_config.dart';

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig {
  /// A list of Bundle ID's usable by this project
  final List<String>? bundleIds;
  final GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig? codeFlowConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig].
  /// [bundleIds] A list of Bundle ID's usable by this project
  /// [codeFlowConfig] Optional.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig({
    this.bundleIds,
    this.codeFlowConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundleIdsValue = bundleIds;
    if (bundleIdsValue != null) {
      map['bundleIds'] = bundleIdsValue;
    }
    final codeFlowConfigValue = codeFlowConfig;
    if (codeFlowConfigValue != null) {
      map['codeFlowConfig'] = codeFlowConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig(
      bundleIds: map['bundleIds'] == null
          ? null
          : (map['bundleIds'] as List).cast<String>(),
      codeFlowConfig: map['codeFlowConfig'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromMap(
              (map['codeFlowConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
