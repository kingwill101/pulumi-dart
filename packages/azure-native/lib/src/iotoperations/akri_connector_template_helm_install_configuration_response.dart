// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateHelmInstallConfiguration properties.
class AkriConnectorTemplateHelmInstallConfigurationResponse {
  /// If set, the operation will be atomic. If the operation fails, all changes will be rolled back.
  final bool? atomic;
  /// Disable pre/post upgrade hooks for the operation.
  final bool? disableHooks;
  /// Time to wait for any individual Kubernetes operation (like `Jobs` for hooks).
  final int? timeout;
  /// If set, the operation will wait until all Pods, PVCs, Services, and minimum number of Pods of a `Deployment`, `StatefulSet`, or `ReplicaSet` are in a ready state before marking the release as successful.
  final bool? wait;
  /// If set, the operation will wait for jobs to complete before marking the release as successful.
  final bool? waitForJobs;

  /// Creates a new [AkriConnectorTemplateHelmInstallConfigurationResponse].
  /// [atomic] If set, the operation will be atomic. If the operation fails, all changes will be rolled back.
  /// [disableHooks] Disable pre/post upgrade hooks for the operation.
  /// [timeout] Time to wait for any individual Kubernetes operation (like `Jobs` for hooks).
  /// [wait] If set, the operation will wait until all Pods, PVCs, Services, and minimum number of Pods of a `Deployment`, `StatefulSet`, or `ReplicaSet` are in a ready state before marking the release as successful.
  /// [waitForJobs] If set, the operation will wait for jobs to complete before marking the release as successful.
  AkriConnectorTemplateHelmInstallConfigurationResponse({
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

  factory AkriConnectorTemplateHelmInstallConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmInstallConfigurationResponse(
      atomic: map['atomic'] == null ? null : map['atomic'] as bool,
      disableHooks: map['disableHooks'] == null ? null : map['disableHooks'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      wait: map['wait'] == null ? null : map['wait'] as bool,
      waitForJobs: map['waitForJobs'] == null ? null : map['waitForJobs'] as bool,
    );
  }
}

