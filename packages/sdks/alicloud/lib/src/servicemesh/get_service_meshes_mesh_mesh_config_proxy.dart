// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigProxy {
  /// The domain name of the Cluster.
  final String clusterDomain;
  /// Sidecar injector Pods on the throttle.
  final String limitCpu;
  /// The memory limit  of the Sidecar injector Pods.
  final String limitMemory;
  /// The requested cpu the Sidecar injector Pods.
  final String requestCpu;
  /// The requested memory the Sidecar injector Pods.
  final String requestMemory;

  /// Creates a new [GetServiceMeshesMeshMeshConfigProxy].
  /// [clusterDomain] The domain name of the Cluster.
  /// [limitCpu] Sidecar injector Pods on the throttle.
  /// [limitMemory] The memory limit  of the Sidecar injector Pods.
  /// [requestCpu] The requested cpu the Sidecar injector Pods.
  /// [requestMemory] The requested memory the Sidecar injector Pods.
  GetServiceMeshesMeshMeshConfigProxy({
    required this.clusterDomain,
    required this.limitCpu,
    required this.limitMemory,
    required this.requestCpu,
    required this.requestMemory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDomain': clusterDomain,
      'limitCpu': limitCpu,
      'limitMemory': limitMemory,
      'requestCpu': requestCpu,
      'requestMemory': requestMemory,
    };
  }

  factory GetServiceMeshesMeshMeshConfigProxy.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigProxy(
      clusterDomain: map['clusterDomain'] as String,
      limitCpu: map['limitCpu'] as String,
      limitMemory: map['limitMemory'] as String,
      requestCpu: map['requestCpu'] as String,
      requestMemory: map['requestMemory'] as String,
    );
  }
}

