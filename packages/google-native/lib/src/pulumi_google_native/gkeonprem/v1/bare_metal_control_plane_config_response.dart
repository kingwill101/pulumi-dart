// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_api_server_argument_response.dart';
import 'bare_metal_control_plane_node_pool_config_response.dart';

/// Specifies the control plane configuration.
class BareMetalControlPlaneConfigResponse {
  /// Customizes the default API server args. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  final List<BareMetalApiServerArgumentResponse> apiServerArgs;

  /// Configures the node pool running the control plane.
  final BareMetalControlPlaneNodePoolConfigResponse controlPlaneNodePoolConfig;

  BareMetalControlPlaneConfigResponse({
    required this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiServerArgs'] = Input.encodeList<BareMetalApiServerArgumentResponse,
        Map<String, dynamic>>(apiServerArgs, (value) => value.toMap());
    map['controlPlaneNodePoolConfig'] = controlPlaneNodePoolConfig.toMap();
    return map;
  }

  factory BareMetalControlPlaneConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalControlPlaneConfigResponse(
      apiServerArgs: Input.decodeList<BareMetalApiServerArgumentResponse>(
          map['apiServerArgs'],
          (value) => BareMetalApiServerArgumentResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      controlPlaneNodePoolConfig:
          BareMetalControlPlaneNodePoolConfigResponse.fromMap(
              (map['controlPlaneNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
