// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etcd_info_response.dart';
import 'node_info_response.dart';

/// Kubernetes cluster configuration
class KubernetesClusterInfoResponse {
  /// Etcd configuration
  final EtcdInfoResponse etcdInfo;
  /// Kubernetes cluster nodes
  final List<NodeInfoResponse> nodes;
  /// Kubernetes cluster version
  final String version;

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
      'etcdInfo': etcdInfo.toMap(),
      'nodes': pulumi.Input.encodeList<NodeInfoResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'version': version,
    };
  }

  factory KubernetesClusterInfoResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterInfoResponse(
      etcdInfo: EtcdInfoResponse.fromMap((map['etcdInfo'] as Map).cast<String, dynamic>()),
      nodes: pulumi.Input.decodeList<NodeInfoResponse>(map['nodes'], (value) => NodeInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

