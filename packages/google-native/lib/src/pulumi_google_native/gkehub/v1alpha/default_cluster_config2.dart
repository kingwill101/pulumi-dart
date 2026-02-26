// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config2.dart';
import 'security_posture_config4.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfig2 {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfig2? binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfig4? securityPostureConfig;

  DefaultClusterConfig2({
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

  factory DefaultClusterConfig2.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfig2(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null
          ? null
          : BinaryAuthorizationConfig2.fromMap(
              (map['binaryAuthorizationConfig'] as Map)
                  .cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null
          ? null
          : SecurityPostureConfig4.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
