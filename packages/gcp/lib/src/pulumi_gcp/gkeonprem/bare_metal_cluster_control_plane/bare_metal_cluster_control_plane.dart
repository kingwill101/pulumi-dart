// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_cluster_control_plane_api_server_arg/bare_metal_cluster_control_plane_api_server_arg.dart';
import '../bare_metal_cluster_control_plane_control_plane_node_pool_config/bare_metal_cluster_control_plane_control_plane_node_pool_config.dart';

class BareMetalClusterControlPlane {
  /// Customizes the default API server args. Only a subset of
  /// customized flags are supported. Please refer to the API server
  /// documentation below to know the exact format:
  /// https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  /// Structure is documented below.
  final List<BareMetalClusterControlPlaneApiServerArg>? apiServerArgs;

  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  /// Structure is documented below.
  final BareMetalClusterControlPlaneControlPlaneNodePoolConfig
      controlPlaneNodePoolConfig;

  BareMetalClusterControlPlane({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiServerArgsValue = apiServerArgs;
    if (apiServerArgsValue != null) {
      map['apiServerArgs'] = Input.encodeList<
          BareMetalClusterControlPlaneApiServerArg,
          Map<String, dynamic>>(apiServerArgsValue, (value) => value.toMap());
    }
    map['controlPlaneNodePoolConfig'] = controlPlaneNodePoolConfig.toMap();
    return map;
  }

  factory BareMetalClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterControlPlane(
      apiServerArgs: map['apiServerArgs'] == null
          ? null
          : Input.decodeList<BareMetalClusterControlPlaneApiServerArg>(
              map['apiServerArgs'],
              (value) => BareMetalClusterControlPlaneApiServerArg.fromMap(
                  (value as Map).cast<String, dynamic>())),
      controlPlaneNodePoolConfig:
          BareMetalClusterControlPlaneControlPlaneNodePoolConfig.fromMap(
              (map['controlPlaneNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
