// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateHelmDeleteConfiguration properties.
class AkriConnectorTemplateHelmDeleteConfigurationResponse {
  /// If set, the operation will be atomic. If the operation fails, all changes will be rolled back.
  final pulumi.Input<bool>? atomic;
  /// Disable pre/post upgrade hooks for the operation.
  final pulumi.Input<bool>? disableHooks;
  /// Time to wait for any individual Kubernetes operation (like `Jobs` for hooks).
  final pulumi.Input<int>? timeout;
  /// If set, the operation will wait until all Pods, PVCs, Services, and minimum number of Pods of a `Deployment`, `StatefulSet`, or `ReplicaSet` are in a ready state before marking the release as successful.
  final pulumi.Input<bool>? wait;
  /// If set, the operation will wait for jobs to complete before marking the release as successful.
  final pulumi.Input<bool>? waitForJobs;

  /// Creates a new [AkriConnectorTemplateHelmDeleteConfigurationResponse].
  /// [atomic] If set, the operation will be atomic. If the operation fails, all changes will be rolled back.
  /// [disableHooks] Disable pre/post upgrade hooks for the operation.
  /// [timeout] Time to wait for any individual Kubernetes operation (like `Jobs` for hooks).
  /// [wait] If set, the operation will wait until all Pods, PVCs, Services, and minimum number of Pods of a `Deployment`, `StatefulSet`, or `ReplicaSet` are in a ready state before marking the release as successful.
  /// [waitForJobs] If set, the operation will wait for jobs to complete before marking the release as successful.
  AkriConnectorTemplateHelmDeleteConfigurationResponse({
    this.atomic,
    this.disableHooks,
    this.timeout,
    this.wait,
    this.waitForJobs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atomic': ?atomic,
      'disableHooks': ?disableHooks,
      'timeout': ?timeout,
      'wait': ?wait,
      'waitForJobs': ?waitForJobs,
    };
  }

  factory AkriConnectorTemplateHelmDeleteConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmDeleteConfigurationResponse(
      atomic: (() { final guardedValue = map['atomic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableHooks: (() { final guardedValue = map['disableHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      wait: (() { final guardedValue = map['wait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      waitForJobs: (() { final guardedValue = map['waitForJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

