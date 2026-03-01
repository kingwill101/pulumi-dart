// ignore_for_file: unused_element, unnecessary_cast

import 'cni_config_response.dart';
import 'load_balancer_config_response.dart';

/// Kubernetes role network resource
class KubernetesRoleNetworkResponse {
  /// Cni configuration
  final CniConfigResponse cniConfig;
  /// Load balancer configuration
  final LoadBalancerConfigResponse loadBalancerConfig;

  /// Creates a new [KubernetesRoleNetworkResponse].
  /// [cniConfig] Cni configuration
  /// [loadBalancerConfig] Load balancer configuration
  KubernetesRoleNetworkResponse({
    required this.cniConfig,
    required this.loadBalancerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cniConfig': cniConfig.toMap(),
      'loadBalancerConfig': loadBalancerConfig.toMap(),
    };
  }

  factory KubernetesRoleNetworkResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleNetworkResponse(
      cniConfig: CniConfigResponse.fromMap((map['cniConfig'] as Map).cast<String, dynamic>()),
      loadBalancerConfig: LoadBalancerConfigResponse.fromMap((map['loadBalancerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

