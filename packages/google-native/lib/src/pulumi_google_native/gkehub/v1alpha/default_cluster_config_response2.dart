// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_response2.dart';
import 'security_posture_config_response4.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponse2 {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigResponse2 binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigResponse4 securityPostureConfig;

  DefaultClusterConfigResponse2({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['binaryAuthorizationConfig'] = binaryAuthorizationConfig.toMap();
    map['securityPostureConfig'] = securityPostureConfig.toMap();
    return map;
  }

  factory DefaultClusterConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponse2(
      binaryAuthorizationConfig: BinaryAuthorizationConfigResponse2.fromMap(
          (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: SecurityPostureConfigResponse4.fromMap(
          (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
