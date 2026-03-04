// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigOpa {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;

  /// Sidecar injector Pods on the throttle.
  final pulumi.Input<String> limitCpu;

  /// The memory limit  of the Sidecar injector Pods.
  final pulumi.Input<String> limitMemory;

  /// The log level of the OPA proxy container .
  final pulumi.Input<String> logLevel;

  /// The requested cpu the Sidecar injector Pods.
  final pulumi.Input<String> requestCpu;

  /// The requested memory the Sidecar injector Pods.
  final pulumi.Input<String> requestMemory;

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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      limitCpu: pulumi.Input.fromValue(map['limitCpu'] as String),
      limitMemory: pulumi.Input.fromValue(map['limitMemory'] as String),
      logLevel: pulumi.Input.fromValue(map['logLevel'] as String),
      requestCpu: pulumi.Input.fromValue(map['requestCpu'] as String),
      requestMemory: pulumi.Input.fromValue(map['requestMemory'] as String),
    );
  }
}
