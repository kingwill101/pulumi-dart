// ignore_for_file: unused_element, unnecessary_cast

import 'daemon_endpoint_patch.dart';

/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
class NodeDaemonEndpointsPatch {
  /// Endpoint on which Kubelet is listening.
  final DaemonEndpointPatch? kubeletEndpoint;

  /// Creates a new [NodeDaemonEndpointsPatch].
  /// [kubeletEndpoint] Endpoint on which Kubelet is listening.
  NodeDaemonEndpointsPatch({
    this.kubeletEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletEndpoint': ?kubeletEndpoint == null ? null : kubeletEndpoint!.toMap(),
    };
  }

  factory NodeDaemonEndpointsPatch.fromMap(Map<String, dynamic> map) {
    return NodeDaemonEndpointsPatch(
      kubeletEndpoint: map['kubeletEndpoint'] == null ? null : DaemonEndpointPatch.fromMap((map['kubeletEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}

