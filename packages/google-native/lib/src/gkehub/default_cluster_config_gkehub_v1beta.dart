// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_gkehub_v1beta.dart';
import 'security_posture_config_gkehub_v1beta.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigGkehubV1beta {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigGkehubV1beta? binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigGkehubV1beta? securityPostureConfig;

  /// Creates a new [DefaultClusterConfigGkehubV1beta].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfigGkehubV1beta({
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

  factory DefaultClusterConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigGkehubV1beta(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null
          ? null
          : BinaryAuthorizationConfigGkehubV1beta.fromMap(
              (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>(),
            ),
      securityPostureConfig: map['securityPostureConfig'] == null
          ? null
          : SecurityPostureConfigGkehubV1beta.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
