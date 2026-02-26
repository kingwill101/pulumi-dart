// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_response3.dart';
import 'security_posture_config_response5.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponse3 {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigResponse3 binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigResponse5 securityPostureConfig;

  DefaultClusterConfigResponse3({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['binaryAuthorizationConfig'] = binaryAuthorizationConfig.toMap();
    map['securityPostureConfig'] = securityPostureConfig.toMap();
    return map;
  }

  factory DefaultClusterConfigResponse3.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponse3(
      binaryAuthorizationConfig: BinaryAuthorizationConfigResponse3.fromMap(
          (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: SecurityPostureConfigResponse5.fromMap(
          (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
