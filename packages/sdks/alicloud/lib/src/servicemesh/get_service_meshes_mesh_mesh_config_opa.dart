// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigOpa {
  /// Whether to enable CNI.
  final bool enabled;
  /// Sidecar injector Pods on the throttle.
  final String limitCpu;
  /// The memory limit  of the Sidecar injector Pods.
  final String limitMemory;
  /// The log level of the OPA proxy container .
  final String logLevel;
  /// The requested cpu the Sidecar injector Pods.
  final String requestCpu;
  /// The requested memory the Sidecar injector Pods.
  final String requestMemory;

  /// Creates a new [GetServiceMeshesMeshMeshConfigOpa].
  /// [enabled] Whether to enable CNI.
  /// [limitCpu] Sidecar injector Pods on the throttle.
  /// [limitMemory] The memory limit  of the Sidecar injector Pods.
  /// [logLevel] The log level of the OPA proxy container .
  /// [requestCpu] The requested cpu the Sidecar injector Pods.
  /// [requestMemory] The requested memory the Sidecar injector Pods.
  GetServiceMeshesMeshMeshConfigOpa({
    required this.enabled,
    required this.limitCpu,
    required this.limitMemory,
    required this.logLevel,
    required this.requestCpu,
    required this.requestMemory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'limitCpu': limitCpu,
      'limitMemory': limitMemory,
      'logLevel': logLevel,
      'requestCpu': requestCpu,
      'requestMemory': requestMemory,
    };
  }

  factory GetServiceMeshesMeshMeshConfigOpa.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigOpa(
      enabled: map['enabled'] as bool,
      limitCpu: map['limitCpu'] as String,
      limitMemory: map['limitMemory'] as String,
      logLevel: map['logLevel'] as String,
      requestCpu: map['requestCpu'] as String,
      requestMemory: map['requestMemory'] as String,
    );
  }
}

