// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_response.dart';
import 'security_posture_config_response.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponse {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigResponse binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigResponse securityPostureConfig;

  /// Creates a new [DefaultClusterConfigResponse].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfigResponse({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': binaryAuthorizationConfig.toMap(),
      'securityPostureConfig': securityPostureConfig.toMap(),
    };
  }

  factory DefaultClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponse(
      binaryAuthorizationConfig: BinaryAuthorizationConfigResponse.fromMap((map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: SecurityPostureConfigResponse.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

