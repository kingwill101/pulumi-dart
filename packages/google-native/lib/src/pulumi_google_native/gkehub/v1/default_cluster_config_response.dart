// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_response.dart';
import 'security_posture_config_response3.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponse {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigResponse binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigResponse3 securityPostureConfig;

  DefaultClusterConfigResponse({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['binaryAuthorizationConfig'] = binaryAuthorizationConfig.toMap();
    map['securityPostureConfig'] = securityPostureConfig.toMap();
    return map;
  }

  factory DefaultClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponse(
      binaryAuthorizationConfig: BinaryAuthorizationConfigResponse.fromMap(
          (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: SecurityPostureConfigResponse3.fromMap(
          (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
