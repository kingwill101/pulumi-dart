// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_kubelet_config_response.dart';
import 'bare_metal_node_config_response.dart';
import 'node_taint_response.dart';

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
  final List<NodeTaintResponse> taints;

  /// Creates a new [BareMetalNodePoolConfigResponse].
  /// [kubeletConfig] The modifiable kubelet configurations for the bare metal machines.
  /// [labels] The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeConfigs] The list of machine addresses in the bare metal node pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  BareMetalNodePoolConfigResponse({
    required this.kubeletConfig,
    required this.labels,
    required this.nodeConfigs,
    required this.operatingSystem,
    required this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfig': kubeletConfig.toMap(),
      'labels': labels,
      'nodeConfigs': pulumi.Input.encodeList<BareMetalNodeConfigResponse, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'operatingSystem': operatingSystem,
      'taints': pulumi.Input.encodeList<NodeTaintResponse, Map<String, dynamic>>(taints, (value) => value.toMap()),
    };
  }

  factory BareMetalNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolConfigResponse(
      kubeletConfig: BareMetalKubeletConfigResponse.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      nodeConfigs: pulumi.Input.decodeList<BareMetalNodeConfigResponse>(map['nodeConfigs'], (value) => BareMetalNodeConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      operatingSystem: map['operatingSystem'] as String,
      taints: pulumi.Input.decodeList<NodeTaintResponse>(map['taints'], (value) => NodeTaintResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

