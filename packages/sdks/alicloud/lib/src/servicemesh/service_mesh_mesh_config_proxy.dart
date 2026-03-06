// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigProxy {
  /// Cluster domain name
  final pulumi.Input<String>? clusterDomain;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitCpu;
  /// Sidecar injector Pods on the throttle
  final pulumi.Input<String>? limitMemory;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestCpu;
  /// Sidecar injector Pods on the requested resource
  final pulumi.Input<String>? requestMemory;

  /// Creates a new [ServiceMeshMeshConfigProxy].
  /// [clusterDomain] Cluster domain name
  /// [limitCpu] Sidecar injector Pods on the throttle
  /// [limitMemory] Sidecar injector Pods on the throttle
  /// [requestCpu] Sidecar injector Pods on the requested resource
  /// [requestMemory] Sidecar injector Pods on the requested resource
  const ServiceMeshMeshConfigProxy({
    this.clusterDomain,
    this.limitCpu,
    this.limitMemory,
    this.requestCpu,
    this.requestMemory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDomain': ?clusterDomain,
      'limitCpu': ?limitCpu,
      'limitMemory': ?limitMemory,
      'requestCpu': ?requestCpu,
      'requestMemory': ?requestMemory,
    };
  }

  factory ServiceMeshMeshConfigProxy.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigProxy(
      clusterDomain: (() { final guardedValue = map['clusterDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitCpu: (() { final guardedValue = map['limitCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitMemory: (() { final guardedValue = map['limitMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestCpu: (() { final guardedValue = map['requestCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMemory: (() { final guardedValue = map['requestMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

