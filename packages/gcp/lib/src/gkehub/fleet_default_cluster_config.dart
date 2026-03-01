// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_default_cluster_config_binary_authorization_config.dart';
import 'fleet_default_cluster_config_security_posture_config.dart';

class FleetDefaultClusterConfig {
  /// Enable/Disable binary authorization features for the cluster.
  /// Structure is documented below.
  final FleetDefaultClusterConfigBinaryAuthorizationConfig?
  binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  /// Structure is documented below.
  final FleetDefaultClusterConfigSecurityPostureConfig? securityPostureConfig;

  /// Creates a new [FleetDefaultClusterConfig].
  /// [binaryAuthorizationConfig] Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  FleetDefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': ?binaryAuthorizationConfig == null
          ? null
          : binaryAuthorizationConfig!.toMap(),
      'securityPostureConfig': ?securityPostureConfig == null
          ? null
          : securityPostureConfig!.toMap(),
    };
  }

  factory FleetDefaultClusterConfig.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfig(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null
          ? null
          : FleetDefaultClusterConfigBinaryAuthorizationConfig.fromMap(
              (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>(),
            ),
      securityPostureConfig: map['securityPostureConfig'] == null
          ? null
          : FleetDefaultClusterConfigSecurityPostureConfig.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
