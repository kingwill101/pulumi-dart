// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_response_gkehub_v1beta.dart';
import 'security_posture_config_response_gkehub_v1beta.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponseGkehubV1beta {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigResponseGkehubV1beta binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigResponseGkehubV1beta securityPostureConfig;

  /// Creates a new [DefaultClusterConfigResponseGkehubV1beta].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfigResponseGkehubV1beta({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': binaryAuthorizationConfig.toMap(),
      'securityPostureConfig': securityPostureConfig.toMap(),
    };
  }

  factory DefaultClusterConfigResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefaultClusterConfigResponseGkehubV1beta(
      binaryAuthorizationConfig:
          BinaryAuthorizationConfigResponseGkehubV1beta.fromMap(
            (map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>(),
          ),
      securityPostureConfig: SecurityPostureConfigResponseGkehubV1beta.fromMap(
        (map['securityPostureConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
