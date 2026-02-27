// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bare_metal_admin_api_server_argument.dart';
import 'bare_metal_admin_control_plane_node_pool_config.dart';

/// BareMetalAdminControlPlaneConfig specifies the control plane configuration.
class BareMetalAdminControlPlaneConfig {
  /// Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  final List<BareMetalAdminApiServerArgument>? apiServerArgs;

  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  final BareMetalAdminControlPlaneNodePoolConfig controlPlaneNodePoolConfig;

  BareMetalAdminControlPlaneConfig({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiServerArgsValue = apiServerArgs;
    if (apiServerArgsValue != null) {
      map['apiServerArgs'] = Input.encodeList<BareMetalAdminApiServerArgument,
          Map<String, dynamic>>(apiServerArgsValue, (value) => value.toMap());
    }
    map['controlPlaneNodePoolConfig'] = controlPlaneNodePoolConfig.toMap();
    return map;
  }

  factory BareMetalAdminControlPlaneConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneConfig(
      apiServerArgs: map['apiServerArgs'] == null
          ? null
          : Input.decodeList<BareMetalAdminApiServerArgument>(
              map['apiServerArgs'],
              (value) => BareMetalAdminApiServerArgument.fromMap(
                  (value as Map).cast<String, dynamic>())),
      controlPlaneNodePoolConfig:
          BareMetalAdminControlPlaneNodePoolConfig.fromMap(
              (map['controlPlaneNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
