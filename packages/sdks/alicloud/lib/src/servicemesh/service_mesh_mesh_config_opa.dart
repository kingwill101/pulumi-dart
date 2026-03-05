// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigOpa {
  /// Enable CNI
  final pulumi.Input<bool>? enabled;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitCpu;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitMemory;
  /// OPA proxy container log level
  final pulumi.Input<String>? logLevel;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestCpu;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestMemory;

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limitCpu: (() { final guardedValue = map['limitCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitMemory: (() { final guardedValue = map['limitMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestCpu: (() { final guardedValue = map['requestCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMemory: (() { final guardedValue = map['requestMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

