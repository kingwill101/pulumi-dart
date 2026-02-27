// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bare_metal_admin_api_server_argument_response.dart';
import 'bare_metal_admin_control_plane_node_pool_config_response.dart';

/// BareMetalAdminControlPlaneConfig specifies the control plane configuration.
class BareMetalAdminControlPlaneConfigResponse {
  /// Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  final List<BareMetalAdminApiServerArgumentResponse> apiServerArgs;

  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  final BareMetalAdminControlPlaneNodePoolConfigResponse
      controlPlaneNodePoolConfig;

  BareMetalAdminControlPlaneConfigResponse({
    required this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiServerArgs'] = Input.encodeList<
        BareMetalAdminApiServerArgumentResponse,
        Map<String, dynamic>>(apiServerArgs, (value) => value.toMap());
    map['controlPlaneNodePoolConfig'] = controlPlaneNodePoolConfig.toMap();
    return map;
  }

  factory BareMetalAdminControlPlaneConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneConfigResponse(
      apiServerArgs: Input.decodeList<BareMetalAdminApiServerArgumentResponse>(
          map['apiServerArgs'],
          (value) => BareMetalAdminApiServerArgumentResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      controlPlaneNodePoolConfig:
          BareMetalAdminControlPlaneNodePoolConfigResponse.fromMap(
              (map['controlPlaneNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
