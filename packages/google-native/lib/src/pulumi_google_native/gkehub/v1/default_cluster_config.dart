// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config.dart';
import 'security_posture_config_gkehub_v1.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfig {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfig? binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigGkehubV1? securityPostureConfig;

  DefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final binaryAuthorizationConfigValue = binaryAuthorizationConfig;
    if (binaryAuthorizationConfigValue != null) {
      map['binaryAuthorizationConfig'] = binaryAuthorizationConfigValue.toMap();
    }
    final securityPostureConfigValue = securityPostureConfig;
    if (securityPostureConfigValue != null) {
      map['securityPostureConfig'] = securityPostureConfigValue.toMap();
    }
    return map;
  }

  factory DefaultClusterConfig.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfig(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null
          ? null
          : BinaryAuthorizationConfig.fromMap(
              (map['binaryAuthorizationConfig'] as Map)
                  .cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null
          ? null
          : SecurityPostureConfigGkehubV1.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
