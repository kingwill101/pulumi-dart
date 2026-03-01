// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigOpa {
  /// Enable CNI
  final bool? enabled;
  /// Sidecar injector Pods on the throttle
  final String? limitCpu;
  /// Sidecar injector Pods on the throttle
  final String? limitMemory;
  /// OPA proxy container log level
  final String? logLevel;
  /// Sidecar injector Pods on the requested resource
  final String? requestCpu;
  /// Sidecar injector Pods on the requested resource
  final String? requestMemory;

  /// Creates a new [ServiceMeshMeshConfigOpa].
  /// [enabled] Enable CNI
  /// [limitCpu] Sidecar injector Pods on the throttle
  /// [limitMemory] Sidecar injector Pods on the throttle
  /// [logLevel] OPA proxy container log level
  /// [requestCpu] Sidecar injector Pods on the requested resource
  /// [requestMemory] Sidecar injector Pods on the requested resource
  ServiceMeshMeshConfigOpa({
    this.enabled,
    this.limitCpu,
    this.limitMemory,
    this.logLevel,
    this.requestCpu,
    this.requestMemory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'limitCpu': ?limitCpu,
      'limitMemory': ?limitMemory,
      'logLevel': ?logLevel,
      'requestCpu': ?requestCpu,
      'requestMemory': ?requestMemory,
    };
  }

  factory ServiceMeshMeshConfigOpa.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigOpa(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      limitCpu: map['limitCpu'] == null ? null : map['limitCpu'] as String,
      limitMemory: map['limitMemory'] == null ? null : map['limitMemory'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      requestCpu: map['requestCpu'] == null ? null : map['requestCpu'] as String,
      requestMemory: map['requestMemory'] == null ? null : map['requestMemory'] as String,
    );
  }
}

