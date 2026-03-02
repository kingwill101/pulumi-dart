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
  ServiceMeshMeshConfigProxy({
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
      clusterDomain: map['clusterDomain'] == null ? null : (map['clusterDomain']! as String).input(),
      limitCpu: map['limitCpu'] == null ? null : (map['limitCpu']! as String).input(),
      limitMemory: map['limitMemory'] == null ? null : (map['limitMemory']! as String).input(),
      requestCpu: map['requestCpu'] == null ? null : (map['requestCpu']! as String).input(),
      requestMemory: map['requestMemory'] == null ? null : (map['requestMemory']! as String).input(),
    );
  }
}

