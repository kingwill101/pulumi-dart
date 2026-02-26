// ignore_for_file: unused_element, unnecessary_cast

class TargetExecutionConfig {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String? artifactStorage;

  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final String? executionTimeout;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final String? serviceAccount;

  /// Required. Usages when this configuration should be applied.
  final List<String> usages;

  /// Optional. If true, additional logging will be enabled when running builds in this execution environment.
  final bool? verbose;

  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final String? workerPool;

  TargetExecutionConfig({
    this.artifactStorage,
    this.executionTimeout,
    this.serviceAccount,
    required this.usages,
    this.verbose,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactStorageValue = artifactStorage;
    if (artifactStorageValue != null) {
      map['artifactStorage'] = artifactStorageValue;
    }
    final executionTimeoutValue = executionTimeout;
    if (executionTimeoutValue != null) {
      map['executionTimeout'] = executionTimeoutValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['usages'] = usages;
    final verboseValue = verbose;
    if (verboseValue != null) {
      map['verbose'] = verboseValue;
    }
    final workerPoolValue = workerPool;
    if (workerPoolValue != null) {
      map['workerPool'] = workerPoolValue;
    }
    return map;
  }

  factory TargetExecutionConfig.fromMap(Map<String, dynamic> map) {
    return TargetExecutionConfig(
      artifactStorage: map['artifactStorage'] == null
          ? null
          : map['artifactStorage'] as String,
      executionTimeout: map['executionTimeout'] == null
          ? null
          : map['executionTimeout'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      usages: (map['usages'] as List).cast<String>(),
      verbose: map['verbose'] == null ? null : map['verbose'] as bool,
      workerPool:
          map['workerPool'] == null ? null : map['workerPool'] as String,
    );
  }
}
