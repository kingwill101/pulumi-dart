// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config3.dart';
import 'security_posture_config5.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfig3 {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfig3? binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfig5? securityPostureConfig;

  DefaultClusterConfig3({
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

  factory DefaultClusterConfig3.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfig3(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null
          ? null
          : BinaryAuthorizationConfig3.fromMap(
              (map['binaryAuthorizationConfig'] as Map)
                  .cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null
          ? null
          : SecurityPostureConfig5.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
