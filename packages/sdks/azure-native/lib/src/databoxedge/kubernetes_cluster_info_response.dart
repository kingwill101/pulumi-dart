// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etcd_info_response.dart';
import 'node_info_response.dart';

/// Kubernetes cluster configuration
class KubernetesClusterInfoResponse {
  /// Etcd configuration
  final pulumi.Input<EtcdInfoResponse> etcdInfo;
  /// Kubernetes cluster nodes
  final pulumi.Input<List<NodeInfoResponse>> nodes;
  /// Kubernetes cluster version
  final pulumi.Input<String> version;

  /// Creates a new [KubernetesClusterInfoResponse].
  /// [etcdInfo] Etcd configuration
  /// [nodes] Kubernetes cluster nodes
  /// [version] Kubernetes cluster version
  KubernetesClusterInfoResponse({
    required this.etcdInfo,
    required this.nodes,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etcdInfo': pulumi.Input.mapInputValue<EtcdInfoResponse, Map<String, dynamic>>(etcdInfo, (value) => value.toMap()),
      'nodes': pulumi.Input.mapInputValue<List<NodeInfoResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<NodeInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory KubernetesClusterInfoResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterInfoResponse(
      etcdInfo: (EtcdInfoResponse.fromMap((map['etcdInfo'] as Map).cast<String, dynamic>())).input(),
      nodes: (pulumi.Input.decodeList<NodeInfoResponse>(map['nodes'], (value) => NodeInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: (map['version'] as String).input(),
    );
  }
}

