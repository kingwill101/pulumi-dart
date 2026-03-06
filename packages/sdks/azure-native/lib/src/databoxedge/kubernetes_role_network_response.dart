// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cni_config_response.dart';
import 'load_balancer_config_response.dart';

/// Kubernetes role network resource
class KubernetesRoleNetworkResponse {
  /// Cni configuration
  final pulumi.Input<CniConfigResponse> cniConfig;
  /// Load balancer configuration
  final pulumi.Input<LoadBalancerConfigResponse> loadBalancerConfig;

  /// Creates a new [KubernetesRoleNetworkResponse].
  /// [cniConfig] Cni configuration
  /// [loadBalancerConfig] Load balancer configuration
  const KubernetesRoleNetworkResponse({
    required this.cniConfig,
    required this.loadBalancerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cniConfig': pulumi.Input.mapInputValue<CniConfigResponse, Map<String, dynamic>>(cniConfig, (value) => value.toMap()),
      'loadBalancerConfig': pulumi.Input.mapInputValue<LoadBalancerConfigResponse, Map<String, dynamic>>(loadBalancerConfig, (value) => value.toMap()),
    };
  }

  factory KubernetesRoleNetworkResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleNetworkResponse(
      cniConfig: pulumi.Input.fromValue(CniConfigResponse.fromMap((map['cniConfig']! as Map).cast<String, dynamic>())),
      loadBalancerConfig: pulumi.Input.fromValue(LoadBalancerConfigResponse.fromMap((map['loadBalancerConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

