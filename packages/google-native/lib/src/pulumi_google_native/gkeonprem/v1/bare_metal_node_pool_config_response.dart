// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_kubelet_config_response.dart';
import 'bare_metal_node_config_response.dart';
import 'node_taint_response3.dart';

/// BareMetalNodePoolConfig describes the configuration of all nodes within a given bare metal node pool.
class BareMetalNodePoolConfigResponse {
  /// The modifiable kubelet configurations for the bare metal machines.
  final BareMetalKubeletConfigResponse kubeletConfig;

  /// The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String> labels;

  /// The list of machine addresses in the bare metal node pool.
  final List<BareMetalNodeConfigResponse> nodeConfigs;

  /// Specifies the nodes operating system (default: LINUX).
  final String operatingSystem;

  /// The initial taints assigned to nodes of this node pool.
  final List<NodeTaintResponse3> taints;

  BareMetalNodePoolConfigResponse({
    required this.kubeletConfig,
    required this.labels,
    required this.nodeConfigs,
    required this.operatingSystem,
    required this.taints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kubeletConfig'] = kubeletConfig.toMap();
    map['labels'] = labels;
    map['nodeConfigs'] =
        Input.encodeList<BareMetalNodeConfigResponse, Map<String, dynamic>>(
            nodeConfigs, (value) => value.toMap());
    map['operatingSystem'] = operatingSystem;
    map['taints'] = Input.encodeList<NodeTaintResponse3, Map<String, dynamic>>(
        taints, (value) => value.toMap());
    return map;
  }

  factory BareMetalNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolConfigResponse(
      kubeletConfig: BareMetalKubeletConfigResponse.fromMap(
          (map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      nodeConfigs: Input.decodeList<BareMetalNodeConfigResponse>(
          map['nodeConfigs'],
          (value) => BareMetalNodeConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      operatingSystem: map['operatingSystem'] as String,
      taints: Input.decodeList<NodeTaintResponse3>(
          map['taints'],
          (value) => NodeTaintResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
